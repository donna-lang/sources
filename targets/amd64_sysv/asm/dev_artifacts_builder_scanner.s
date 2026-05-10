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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_scanner_Project, @function
.size builder_scanner_Project, .-builder_scanner_Project
/* end function builder_scanner_Project */

.text
.balign 16
.globl builder_scanner_ScanOk
builder_scanner_ScanOk:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
.type builder_scanner_ScanOk, @function
.size builder_scanner_ScanOk, .-builder_scanner_ScanOk
/* end function builder_scanner_ScanOk */

.text
.balign 16
.globl builder_scanner_ScanErr
builder_scanner_ScanErr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
.type builder_scanner_ScanErr, @function
.size builder_scanner_ScanErr, .-builder_scanner_ScanErr
/* end function builder_scanner_ScanErr */

.text
.balign 16
.globl builder_scanner_ProjectMeta
builder_scanner_ProjectMeta:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq 24(%rbp), %rax
	movq %rax, -24(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -32(%rbp)
	movq %r9, %rbx
	movq %r8, %r12
	movq %rcx, %r13
	movq %rdx, %r14
	movq %rsi, %r15
	movq %rdi, -16(%rbp)
	movl $72, %edi
	callq malloc
	movq -24(%rbp), %rcx
	movq -32(%rbp), %rdx
	movq -16(%rbp), %rsi
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	movq %r15, 16(%rax)
	movq %r14, 24(%rax)
	movq %r13, 32(%rax)
	movq %r12, 40(%rax)
	movq %rbx, 48(%rax)
	movq %rdx, 56(%rax)
	movq %rcx, 64(%rax)
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_scanner_ProjectMeta, @function
.size builder_scanner_ProjectMeta, .-builder_scanner_ProjectMeta
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
	pushq %r13
	pushq %r14
	movq %rdi, %r13
	leaq str17(%rip), %rsi
	movq %r13, %rdi
	callq donna_files_join
	movq %rax, %rdi
	movq %rdi, %rbx
	callq donna_files_exists
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb15
	callq donna_files_read
	movq %rax, %rdi
	callq parsetoml_parsetoml_parse
	movq %rax, %rdi
	movq %rdi, %rbx
	callq parsetoml_parsetoml_is_err
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb14
	callq parsetoml_parsetoml_unwrap_table
	movq %rax, %rdi
	leaq str40(%rip), %rsi
	callq parsetoml_parsetoml_get_string
	movq %rax, %rdi
	movq %rdi, %r12
	callq parsetoml_parsetoml_is_err
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb12
	callq parsetoml_parsetoml_unwrap_string
	movq %r13, %rdi
	movq %rax, %r13
	leaq str51(%rip), %rsi
	movq %rdi, %r14
	callq donna_files_join
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rsi, %r14
	leaq str53(%rip), %rsi
	callq donna_files_join
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	callq builder_scanner_Project
	movq %rax, %rdi
	callq builder_scanner_ScanOk
	movq %rax, (%r12)
	jmp .Lbb13
.Lbb12:
	leaq str48(%rip), %rdi
	callq builder_scanner_ScanErr
	movq %rax, (%r12)
.Lbb13:
	movq %rax, (%rbx)
	jmp .Lbb16
.Lbb14:
	callq parsetoml_parsetoml_err_msg
	movq %rax, %rsi
	leaq str35(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq builder_scanner_ScanErr
	movq %rax, (%rbx)
	jmp .Lbb16
.Lbb15:
	leaq str25(%rip), %rdi
	callq builder_scanner_ScanErr
.Lbb16:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_scanner_scan, @function
.size builder_scanner_scan, .-builder_scanner_scan
/* end function builder_scanner_scan */

.text
.balign 16
.globl builder_scanner_project_name
builder_scanner_project_name:
	endbr64
	movq 8(%rdi), %rax
	ret
.type builder_scanner_project_name, @function
.size builder_scanner_project_name, .-builder_scanner_project_name
/* end function builder_scanner_project_name */

.text
.balign 16
.globl builder_scanner_project_src_dir
builder_scanner_project_src_dir:
	endbr64
	movq 16(%rdi), %rax
	ret
.type builder_scanner_project_src_dir, @function
.size builder_scanner_project_src_dir, .-builder_scanner_project_src_dir
/* end function builder_scanner_project_src_dir */

.text
.balign 16
.globl builder_scanner_project_build_dir
builder_scanner_project_build_dir:
	endbr64
	movq 24(%rdi), %rax
	ret
.type builder_scanner_project_build_dir, @function
.size builder_scanner_project_build_dir, .-builder_scanner_project_build_dir
/* end function builder_scanner_project_build_dir */

.text
.balign 16
.globl builder_scanner_project_bin_dir
builder_scanner_project_bin_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq builder_scanner_project_build_dir
	movq %rax, %rdi
	leaq str88(%rip), %rsi
	callq donna_files_join
	leave
	ret
.type builder_scanner_project_bin_dir, @function
.size builder_scanner_project_bin_dir, .-builder_scanner_project_bin_dir
/* end function builder_scanner_project_bin_dir */

.text
.balign 16
.globl builder_scanner_project_dev_dir
builder_scanner_project_dev_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq builder_scanner_project_build_dir
	movq %rax, %rdi
	leaq str91(%rip), %rsi
	callq donna_files_join
	leave
	ret
.type builder_scanner_project_dev_dir, @function
.size builder_scanner_project_dev_dir, .-builder_scanner_project_dev_dir
/* end function builder_scanner_project_dev_dir */

.text
.balign 16
.globl builder_scanner_project_dev_artifacts_dir
builder_scanner_project_dev_artifacts_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq builder_scanner_project_dev_dir
	movq %rax, %rdi
	leaq str94(%rip), %rsi
	callq donna_files_join
	leave
	ret
.type builder_scanner_project_dev_artifacts_dir, @function
.size builder_scanner_project_dev_artifacts_dir, .-builder_scanner_project_dev_artifacts_dir
/* end function builder_scanner_project_dev_artifacts_dir */

.text
.balign 16
.globl builder_scanner_project_packages_dir
builder_scanner_project_packages_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq builder_scanner_project_build_dir
	movq %rax, %rdi
	leaq str97(%rip), %rsi
	callq donna_files_join
	leave
	ret
.type builder_scanner_project_packages_dir, @function
.size builder_scanner_project_packages_dir, .-builder_scanner_project_packages_dir
/* end function builder_scanner_project_packages_dir */

.text
.balign 16
.globl builder_scanner_project_package_dir
builder_scanner_project_package_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	callq builder_scanner_project_packages_dir
	movq %rbx, %rsi
	movq %rax, %rdi
	callq donna_files_join
	popq %rbx
	leave
	ret
.type builder_scanner_project_package_dir, @function
.size builder_scanner_project_package_dir, .-builder_scanner_project_package_dir
/* end function builder_scanner_project_package_dir */

.text
.balign 16
.globl builder_scanner_project_package_artifacts_dir
builder_scanner_project_package_artifacts_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq builder_scanner_project_package_dir
	movq %rax, %rdi
	leaq str102(%rip), %rsi
	callq donna_files_join
	leave
	ret
.type builder_scanner_project_package_artifacts_dir, @function
.size builder_scanner_project_package_artifacts_dir, .-builder_scanner_project_package_artifacts_dir
/* end function builder_scanner_project_package_artifacts_dir */

.text
.balign 16
.globl builder_scanner_project_test_dir
builder_scanner_project_test_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq builder_scanner_project_build_dir
	movq %rax, %rdi
	leaq str105(%rip), %rsi
	callq donna_files_join
	leave
	ret
.type builder_scanner_project_test_dir, @function
.size builder_scanner_project_test_dir, .-builder_scanner_project_test_dir
/* end function builder_scanner_project_test_dir */

.text
.balign 16
.globl builder_scanner_meta_name
builder_scanner_meta_name:
	endbr64
	movq 8(%rdi), %rax
	ret
.type builder_scanner_meta_name, @function
.size builder_scanner_meta_name, .-builder_scanner_meta_name
/* end function builder_scanner_meta_name */

.text
.balign 16
.globl builder_scanner_meta_version
builder_scanner_meta_version:
	endbr64
	movq 16(%rdi), %rax
	ret
.type builder_scanner_meta_version, @function
.size builder_scanner_meta_version, .-builder_scanner_meta_version
/* end function builder_scanner_meta_version */

.text
.balign 16
.globl builder_scanner_meta_description
builder_scanner_meta_description:
	endbr64
	movq 24(%rdi), %rax
	ret
.type builder_scanner_meta_description, @function
.size builder_scanner_meta_description, .-builder_scanner_meta_description
/* end function builder_scanner_meta_description */

.text
.balign 16
.globl builder_scanner_meta_authors
builder_scanner_meta_authors:
	endbr64
	movq 32(%rdi), %rax
	ret
.type builder_scanner_meta_authors, @function
.size builder_scanner_meta_authors, .-builder_scanner_meta_authors
/* end function builder_scanner_meta_authors */

.text
.balign 16
.globl builder_scanner_meta_licence
builder_scanner_meta_licence:
	endbr64
	movq 40(%rdi), %rax
	ret
.type builder_scanner_meta_licence, @function
.size builder_scanner_meta_licence, .-builder_scanner_meta_licence
/* end function builder_scanner_meta_licence */

.text
.balign 16
.globl builder_scanner_meta_homepage
builder_scanner_meta_homepage:
	endbr64
	movq 48(%rdi), %rax
	ret
.type builder_scanner_meta_homepage, @function
.size builder_scanner_meta_homepage, .-builder_scanner_meta_homepage
/* end function builder_scanner_meta_homepage */

.text
.balign 16
.globl builder_scanner_meta_repository
builder_scanner_meta_repository:
	endbr64
	movq 56(%rdi), %rax
	ret
.type builder_scanner_meta_repository, @function
.size builder_scanner_meta_repository, .-builder_scanner_meta_repository
/* end function builder_scanner_meta_repository */

.text
.balign 16
.globl builder_scanner_meta_github_owner_repo
builder_scanner_meta_github_owner_repo:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq builder_scanner_meta_repository
	movq %rax, %rdi
	callq builder_scanner_github_owner_repo
	leave
	ret
.type builder_scanner_meta_github_owner_repo, @function
.size builder_scanner_meta_github_owner_repo, .-builder_scanner_meta_github_owner_repo
/* end function builder_scanner_meta_github_owner_repo */

.text
.balign 16
.globl builder_scanner_meta_links
builder_scanner_meta_links:
	endbr64
	movq 64(%rdi), %rax
	ret
.type builder_scanner_meta_links, @function
.size builder_scanner_meta_links, .-builder_scanner_meta_links
/* end function builder_scanner_meta_links */

.text
.balign 16
.globl builder_scanner_scan_meta
builder_scanner_scan_meta:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	leaq str261(%rip), %rsi
	callq donna_files_join
	movq %rax, %rdi
	movq %rdi, %rbx
	callq donna_files_exists
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb59
	callq donna_files_read
	movq %rax, %rdi
	callq parsetoml_parsetoml_parse
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb58
	movq 8(%rax), %rdi
	leaq str283(%rip), %rsi
	movq %rdi, %r12
	callq builder_scanner_opt_str
	movq %r12, %rdi
	movq %rax, -16(%rbp)
	leaq str285(%rip), %rsi
	movq %rdi, %r12
	callq builder_scanner_opt_str
	movq %r12, %rdi
	movq %rax, -8(%rbp)
	leaq str287(%rip), %rsi
	movq %rdi, %r12
	callq builder_scanner_opt_str
	movq %r12, %rdi
	movq %rax, %r13
	leaq str289(%rip), %rsi
	movq %rdi, %r12
	callq builder_scanner_str_array
	movq %r12, %rdi
	movq %rax, %r14
	movq %rdi, %r12
	callq builder_scanner_parse_licence
	movq %r12, %rdi
	movq %rax, %r15
	leaq str292(%rip), %rsi
	movq %rdi, %r12
	callq builder_scanner_opt_str
	movq %r12, %rdi
	movq %rax, -32(%rbp)
	movq %rdi, %r12
	callq builder_scanner_parse_repository
	movq %r12, %rdi
	movq %rax, -24(%rbp)
	movq -8(%rbp), %r12
	callq builder_scanner_parse_links
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, %r11
	movq -24(%rbp), %rax
	movq -32(%rbp), %r9
	movq -16(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %r10
	movq %r11, 8(%r10)
	movq %rax, 0(%r10)
	callq builder_scanner_ProjectMeta
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb60
.Lbb58:
	callq builder_scanner_empty_meta
	movq %rax, (%rbx)
	jmp .Lbb60
.Lbb59:
	callq builder_scanner_empty_meta
.Lbb60:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_scanner_scan_meta, @function
.size builder_scanner_scan_meta, .-builder_scanner_scan_meta
/* end function builder_scanner_scan_meta */

.text
.balign 16
builder_scanner_empty_meta:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rsp, %rcx
	leaq donna_nil(%rip), %rax
	movq %rax, 8(%rcx)
	leaq str304(%rip), %rax
	movq %rax, 0(%rcx)
	leaq str303(%rip), %r9
	leaq str302(%rip), %r8
	leaq donna_nil(%rip), %rcx
	leaq str301(%rip), %rdx
	leaq str300(%rip), %rsi
	leaq str299(%rip), %rdi
	callq builder_scanner_ProjectMeta
	subq $-16, %rsp
	leave
	ret
.type builder_scanner_empty_meta, @function
.size builder_scanner_empty_meta, .-builder_scanner_empty_meta
/* end function builder_scanner_empty_meta */

.text
.balign 16
builder_scanner_parse_licence:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	leaq str306(%rip), %rsi
	movq %rdi, %rbx
	callq parsetoml_parsetoml_get_array
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb73
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz .Lbb72
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edx
	jnz .Lbb68
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb69
.Lbb68:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	cmpq $0, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb69:
	cmpl $0, %edx
	jnz .Lbb71
	leaq str348(%rip), %rax
	movq %rax, (%rcx)
	leaq str348(%rip), %rax
	jmp .Lbb74
.Lbb71:
	movq 8(%rax), %rax
	movq 8(%rax), %rax
	movq %rax, (%rcx)
	jmp .Lbb74
.Lbb72:
	leaq str325(%rip), %rax
	movq %rax, (%rcx)
	leaq str325(%rip), %rax
	jmp .Lbb74
.Lbb73:
	leaq str316(%rip), %rax
.Lbb74:
	movq %rax, %rbx
	movq %rdi, %r12
	movq %rbx, %rdi
	callq donna_string_is_empty
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rcx
	jz .Lbb76
	leaq str357(%rip), %rsi
	callq builder_scanner_opt_str
	movq %rax, (%rbx)
	jmp .Lbb77
.Lbb76:
	movq %rax, (%rbx)
.Lbb77:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type builder_scanner_parse_licence, @function
.size builder_scanner_parse_licence, .-builder_scanner_parse_licence
/* end function builder_scanner_parse_licence */

.text
.balign 16
builder_scanner_parse_repository:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	leaq str360(%rip), %rsi
	movq %rdi, %rbx
	callq parsetoml_parsetoml_get_table
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb85
	movq 8(%rax), %rdi
	leaq str374(%rip), %rsi
	movq %rdi, %r12
	callq builder_scanner_opt_str
	movq %r12, %rdi
	movq %rax, %r12
	leaq str376(%rip), %rsi
	movq %rdi, %r13
	callq builder_scanner_opt_str
	movq %r13, %rdi
	movq %rax, %r14
	leaq str378(%rip), %rsi
	callq builder_scanner_opt_str
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rsi, %r13
	leaq str380(%rip), %rsi
	callq donna_string_equal
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb81
	leaq str402(%rip), %rsi
	callq builder_scanner_opt_str
	movq %rax, (%rbx)
	jmp .Lbb87
.Lbb81:
	movq %r14, %rdi
	callq donna_string_is_empty
	movq %rax, %r12
	movq %r13, %rdi
	callq donna_string_is_empty
	movq %r14, %rsi
	orq %r12, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb83
	leaq str396(%rip), %rdi
	callq __rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq str398(%rip), %rsi
	callq __rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, (%r12)
	jmp .Lbb84
.Lbb83:
	leaq str395(%rip), %rax
	movq %rax, (%r12)
	leaq str395(%rip), %rax
.Lbb84:
	movq %rax, (%rbx)
	jmp .Lbb87
.Lbb85:
	movq %rbx, %rdi
	leaq str370(%rip), %rsi
	callq builder_scanner_opt_str
.Lbb87:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_scanner_parse_repository, @function
.size builder_scanner_parse_repository, .-builder_scanner_parse_repository
/* end function builder_scanner_parse_repository */

.text
.balign 16
builder_scanner_github_owner_repo:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	callq builder_scanner_strip_trailing_slash
	movq %rax, %rdi
	callq builder_scanner_strip_git_suffix
	movq %rax, %rdi
	leaq str408(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_starts_with
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb92
	leaq str423(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_starts_with
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb91
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
	jmp .Lbb93
.Lbb91:
	movq %rdi, %r12
	leaq str423(%rip), %rdi
	callq donna_string_length
	movq %r12, %rdi
	movq %rax, %r14
	movq %rdi, %r12
	callq donna_string_length
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	leaq str423(%rip), %rdi
	callq donna_string_length
	movq %r14, %rsi
	movq %r13, %rdi
	movq %r12, %rdx
	subq %rax, %rdx
	callq donna_string_slice
	movq %rax, %rdi
	leaq str435(%rip), %rsi
	callq donna_string_split
	movq %rax, %rdi
	callq builder_scanner_owner_repo_from_parts
	movq %rax, (%rbx)
	jmp .Lbb93
.Lbb92:
	movq %rdi, %rbx
	leaq str408(%rip), %rdi
	callq donna_string_length
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	callq donna_string_length
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r12
	leaq str408(%rip), %rdi
	callq donna_string_length
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rbx, %rdx
	subq %rax, %rdx
	callq donna_string_slice
	movq %rax, %rdi
	leaq str420(%rip), %rsi
	callq donna_string_split
	movq %rax, %rdi
	callq builder_scanner_owner_repo_from_parts
.Lbb93:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_scanner_github_owner_repo, @function
.size builder_scanner_github_owner_repo, .-builder_scanner_github_owner_repo
/* end function builder_scanner_github_owner_repo */

.text
.balign 16
builder_scanner_owner_repo_from_parts:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb96
	movl $0, %ecx
	jmp .Lbb102
.Lbb96:
	movq 16(%rax), %rcx
	movq (%rcx), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb99
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb101
.Lbb99:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb101:
	andq $1, %rcx
.Lbb102:
	cmpl $0, %ecx
	jnz .Lbb104
	leaq donna_option_None(%rip), %rax
	jmp .Lbb107
.Lbb104:
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	movq 8(%rax), %r13
	movq %rdi, %rbx
	callq donna_string_is_empty
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r12
	movq %r13, %rdi
	callq donna_string_is_empty
	movq %r13, %rsi
	movq %r12, %rdi
	orq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb106
	movq %rsi, %r12
	leaq str484(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_option_Some
	movq %rax, (%rbx)
	jmp .Lbb107
.Lbb106:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_option_None(%rip), %rax
.Lbb107:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_scanner_owner_repo_from_parts, @function
.size builder_scanner_owner_repo_from_parts, .-builder_scanner_owner_repo_from_parts
/* end function builder_scanner_owner_repo_from_parts */

.text
.balign 16
builder_scanner_strip_trailing_slash:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str490(%rip), %rsi
	movq %rbx, %rdi
	callq donna_string_ends_with
	cmpq $1, %rax
	jz .Lbb110
	movq %rbx, %rax
	jmp .Lbb111
.Lbb110:
	movq %rbx, %rdi
	callq donna_string_length
	movq %rax, %rcx
	movq %rbx, %rax
	movq %rcx, %rdx
	subq $1, %rdx
	movl $0, %esi
	movq %rax, %rdi
	callq donna_string_slice
.Lbb111:
	popq %rbx
	leave
	ret
.type builder_scanner_strip_trailing_slash, @function
.size builder_scanner_strip_trailing_slash, .-builder_scanner_strip_trailing_slash
/* end function builder_scanner_strip_trailing_slash */

.text
.balign 16
builder_scanner_strip_git_suffix:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str501(%rip), %rsi
	movq %rbx, %rdi
	callq donna_string_ends_with
	cmpq $1, %rax
	jz .Lbb114
	movq %rbx, %rax
	jmp .Lbb115
.Lbb114:
	movq %rbx, %rdi
	callq donna_string_length
	movq %rax, %rcx
	movq %rbx, %rax
	movq %rcx, %rdx
	subq $4, %rdx
	movl $0, %esi
	movq %rax, %rdi
	callq donna_string_slice
.Lbb115:
	popq %rbx
	leave
	ret
.type builder_scanner_strip_git_suffix, @function
.size builder_scanner_strip_git_suffix, .-builder_scanner_strip_git_suffix
/* end function builder_scanner_strip_git_suffix */

.text
.balign 16
builder_scanner_parse_links:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq str512(%rip), %rsi
	callq parsetoml_parsetoml_get_array
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb118
	movq 8(%rax), %rdi
	leaq donna_nil(%rip), %rsi
	callq builder_scanner_collect_links
	jmp .Lbb119
.Lbb118:
	leaq donna_nil(%rip), %rax
.Lbb119:
	leave
	ret
.type builder_scanner_parse_links, @function
.size builder_scanner_parse_links, .-builder_scanner_parse_links
/* end function builder_scanner_parse_links */

.text
.balign 16
builder_scanner_collect_links:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb136
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb124
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb125
.Lbb124:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb125:
	cmpl $0, %eax
	jnz .Lbb127
	movq 16(%rdi), %rdi
	movq %rbx, %rsi
	callq builder_scanner_collect_links
	jmp .Lbb138
.Lbb127:
	movq 8(%rdi), %rax
	movq 16(%rdi), %r12
	movq 8(%rax), %rdi
	leaq str555(%rip), %rsi
	movq %rdi, %r13
	callq builder_scanner_lookup_pair
	movq %r13, %rdi
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb130
	leaq str565(%rip), %rcx
	movq %rcx, (%rax)
	leaq str565(%rip), %rax
	movq %rax, %r14
	jmp .Lbb131
.Lbb130:
	movq 8(%rcx), %r14
	movq %r14, (%rax)
.Lbb131:
	leaq str567(%rip), %rsi
	callq builder_scanner_lookup_pair
	movq %r12, %rdi
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb134
	leaq str577(%rip), %rcx
	movq %rcx, (%rax)
	leaq str577(%rip), %rax
	movq %rax, %r13
	jmp .Lbb135
.Lbb134:
	movq 8(%rcx), %r13
	movq %r13, (%rax)
.Lbb135:
	movq %rdi, %r12
	movl $16, %edi
	callq malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq builder_scanner_collect_links
	jmp .Lbb138
.Lbb136:
	movq %rbx, %rdi
	callq donna_list_reverse
.Lbb138:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_scanner_collect_links, @function
.size builder_scanner_collect_links, .-builder_scanner_collect_links
/* end function builder_scanner_collect_links */

.text
.balign 16
builder_scanner_lookup_pair:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb143
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %r12
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	movq %rsi, %r13
	callq donna_string_equal
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz .Lbb142
	callq builder_scanner_lookup_pair
	movq %rax, (%rbx)
	jmp .Lbb144
.Lbb142:
	movq %rax, (%rbx)
	jmp .Lbb144
.Lbb143:
	leaq str598(%rip), %rdi
	callq parsetoml_parsetoml_TomlString
.Lbb144:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_scanner_lookup_pair, @function
.size builder_scanner_lookup_pair, .-builder_scanner_lookup_pair
/* end function builder_scanner_lookup_pair */

.text
.balign 16
builder_scanner_opt_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq parsetoml_parsetoml_get_string
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb147
	leaq str628(%rip), %rax
	jmp .Lbb148
.Lbb147:
	movq 8(%rax), %rax
.Lbb148:
	leave
	ret
.type builder_scanner_opt_str, @function
.size builder_scanner_opt_str, .-builder_scanner_opt_str
/* end function builder_scanner_opt_str */

.text
.balign 16
builder_scanner_str_array:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq parsetoml_parsetoml_get_array
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb151
	movq 8(%rax), %rdi
	leaq donna_nil(%rip), %rsi
	callq builder_scanner_collect_strings
	jmp .Lbb152
.Lbb151:
	leaq donna_nil(%rip), %rax
.Lbb152:
	leave
	ret
.type builder_scanner_str_array, @function
.size builder_scanner_str_array, .-builder_scanner_str_array
/* end function builder_scanner_str_array */

.text
.balign 16
builder_scanner_collect_strings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb161
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb157
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb158
.Lbb157:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb158:
	cmpl $0, %eax
	jnz .Lbb160
	movq 16(%rdi), %rdi
	movq %rbx, %rsi
	callq builder_scanner_collect_strings
	jmp .Lbb163
.Lbb160:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq builder_scanner_collect_strings
	jmp .Lbb163
.Lbb161:
	movq %rbx, %rdi
	callq donna_list_reverse
.Lbb163:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_scanner_collect_strings, @function
.size builder_scanner_collect_strings, .-builder_scanner_collect_strings
/* end function builder_scanner_collect_strings */

.text
.balign 16
__rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
