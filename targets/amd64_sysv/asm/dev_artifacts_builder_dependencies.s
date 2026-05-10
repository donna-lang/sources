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
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_Dep, @function
.size builder_dependencies_Dep, .-builder_dependencies_Dep
/* end function builder_dependencies_Dep */

.text
.balign 16
.globl builder_dependencies_dep_name
builder_dependencies_dep_name:
	endbr64
	movq 8(%rdi), %rax
	ret
.type builder_dependencies_dep_name, @function
.size builder_dependencies_dep_name, .-builder_dependencies_dep_name
/* end function builder_dependencies_dep_name */

.text
.balign 16
.globl builder_dependencies_dep_path
builder_dependencies_dep_path:
	endbr64
	movq 16(%rdi), %rax
	ret
.type builder_dependencies_dep_path, @function
.size builder_dependencies_dep_path, .-builder_dependencies_dep_path
/* end function builder_dependencies_dep_path */

.text
.balign 16
.globl builder_dependencies_dep_src_dir
builder_dependencies_dep_src_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq builder_dependencies_dep_path
	movq %rax, %rdi
	leaq str18(%rip), %rsi
	callq donna_files_join
	leave
	ret
.type builder_dependencies_dep_src_dir, @function
.size builder_dependencies_dep_src_dir, .-builder_dependencies_dep_src_dir
/* end function builder_dependencies_dep_src_dir */

.text
.balign 16
.globl builder_dependencies_dep_ffi_dir
builder_dependencies_dep_ffi_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq builder_dependencies_dep_path
	movq %rax, %rdi
	leaq str21(%rip), %rsi
	callq donna_files_join
	leave
	ret
.type builder_dependencies_dep_ffi_dir, @function
.size builder_dependencies_dep_ffi_dir, .-builder_dependencies_dep_ffi_dir
/* end function builder_dependencies_dep_ffi_dir */

.text
.balign 16
.globl builder_dependencies_resolve_all
builder_dependencies_resolve_all:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	leaq str23(%rip), %rsi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq donna_files_join
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movq %r12, %rdi
	callq builder_lock_read
	movq %r13, %rdi
	movq %rax, %r13
	callq donna_files_read
	movq %r13, %rcx
	movq %rbx, %rsi
	movq %rax, %rdi
	leaq str27(%rip), %rdx
	movq %rsi, %r13
	movq %rdi, %rbx
	callq builder_dependencies_parse_section
	movq %r13, %rsi
	movq %rbx, %rdi
	movq (%rax), %rbx
	movq 8(%rax), %rcx
	leaq str33(%rip), %rdx
	callq builder_dependencies_parse_section
	movq %r12, %rdi
	movq (%rax), %rsi
	movq %rsi, %r12
	movq 8(%rax), %rsi
	callq builder_lock_write
	movq %r12, %rsi
	movq %rbx, %rdi
	callq donna_list_append
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_resolve_all, @function
.size builder_dependencies_resolve_all, .-builder_dependencies_resolve_all
/* end function builder_dependencies_resolve_all */

.text
.balign 16
.globl builder_dependencies_resolve_deps
builder_dependencies_resolve_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	leaq str41(%rip), %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_files_join
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	movq %rbx, %rdi
	callq builder_lock_read
	movq %r13, %rdi
	movq %rax, %r13
	callq donna_files_read
	movq %r13, %rcx
	movq %r12, %rsi
	movq %rax, %rdi
	leaq str45(%rip), %rdx
	callq builder_dependencies_parse_section
	movq %rbx, %rdi
	movq (%rax), %rbx
	movq 8(%rax), %rsi
	callq builder_lock_write
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_resolve_deps, @function
.size builder_dependencies_resolve_deps, .-builder_dependencies_resolve_deps
/* end function builder_dependencies_resolve_deps */

.text
.balign 16
.globl builder_dependencies_resolve_dev_deps
builder_dependencies_resolve_dev_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	leaq str52(%rip), %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_files_join
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	movq %rbx, %rdi
	callq builder_lock_read
	movq %r13, %rdi
	movq %rax, %r13
	callq donna_files_read
	movq %r13, %rcx
	movq %r12, %rsi
	movq %rax, %rdi
	leaq str56(%rip), %rdx
	callq builder_dependencies_parse_section
	movq %rbx, %rdi
	movq (%rax), %rbx
	movq 8(%rax), %rsi
	callq builder_lock_write
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_resolve_dev_deps, @function
.size builder_dependencies_resolve_dev_deps, .-builder_dependencies_resolve_dev_deps
/* end function builder_dependencies_resolve_dev_deps */

.text
.balign 16
builder_dependencies_parse_section:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %r12
	movq %rdx, %r13
	movq %rsi, %rbx
	callq parsetoml_parsetoml_parse
	movq %rax, %rdi
	movq %rdi, %r14
	callq parsetoml_parsetoml_is_err
	movq %r14, %rdi
	cmpq $1, %rax
	jz .Lbb25
	callq parsetoml_parsetoml_unwrap_table
	movq %r13, %rsi
	movq %rax, %rdi
	callq parsetoml_parsetoml_get_table
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz .Lbb23
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq %rcx, %r13
	movq (%rax), %rcx
	cmpq $4, %rcx
	jz .Lbb20
	movl $16, %edi
	callq malloc
	movq %r13, %rcx
	leaq donna_nil(%rip), %rdx
	movq %rdx, (%rax)
	movq %rcx, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb22
.Lbb20:
	movq %r13, %rcx
	movq 8(%rax), %rdi
	movq %rcx, %r8
	movq %rcx, %r13
	leaq donna_nil(%rip), %rcx
	movq %r13, %rdx
	callq builder_dependencies_collect_deps
	movq %rax, (%r12)
.Lbb22:
	movq %rax, (%rbx)
	jmp .Lbb27
.Lbb23:
	movq %rcx, %r12
	movl $16, %edi
	callq malloc
	movq %r12, %rcx
	leaq donna_nil(%rip), %rdx
	movq %rdx, (%rax)
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb27
.Lbb25:
	movq %r12, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rcx
	leaq donna_nil(%rip), %rdx
	movq %rdx, (%rax)
	movq %rcx, 8(%rax)
.Lbb27:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_parse_section, @function
.size builder_dependencies_parse_section, .-builder_dependencies_parse_section
/* end function builder_dependencies_parse_section */

.text
.balign 16
builder_dependencies_collect_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb37
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %r8, %r15
	movq (%rax), %r8
	movq %r8, -48(%rbp)
	movq %rdx, %r14
	movq 8(%rax), %rdx
	movq %rdx, -16(%rbp)
	movq %rsi, %r12
	leaq str121(%rip), %rsi
	movq %rdi, %rbx
	movq %rdx, %rdi
	callq parsetoml_parsetoml_get_string
	movq %r14, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rdx, %r14
	movq -16(%rbp), %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -64(%rbp)
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb35
	movq %rsi, %r12
	leaq str139(%rip), %rsi
	movq %rdi, %rbx
	movq %rdx, %rdi
	callq parsetoml_parsetoml_get_string
	movq %r15, %r8
	movq %r14, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq -64(%rbp), %rcx
	movq %rdx, %r15
	movq -16(%rbp), %rdx
	movq %rdi, %rbx
	movq -48(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -40(%rbp)
	movq %r8, %r14
	movq (%rax), %r8
	cmpq $1, %r8
	jz .Lbb32
	movq %rsi, %r12
	movq 8(%rax), %rsi
	movq %r15, %rcx
	callq builder_dependencies_resolve_git_dep
	movq %r14, %r8
	movq %r12, %rsi
	movq %rbx, %rdi
	movq -64(%rbp), %rbx
	movq (%rax), %rcx
	movq %rcx, -32(%rbp)
	movq %rsi, %r14
	movq 8(%rax), %rsi
	movq %rdi, %r12
	movq %r8, %rdi
	callq builder_lock_upsert
	movq %r12, %rdi
	movq %rax, -24(%rbp)
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %rcx
	movq -40(%rbp), %r12
	movq -24(%rbp), %r8
	movq -32(%rbp), %rax
	movq $1, (%rcx)
	movq %rax, 8(%rcx)
	movq %r13, 16(%rcx)
	callq builder_dependencies_collect_deps
	movq %rax, (%r12)
	jmp .Lbb34
.Lbb32:
	movq %rbx, %rdi
	movq %rcx, %rbx
	movq %r14, %r8
	movq %r15, %rdx
	movq %r8, %r15
	movq %r13, %rcx
	movq %rdx, %r14
	callq builder_dependencies_collect_deps
	movq %rax, (%r12)
.Lbb34:
	movq %rax, (%rbx)
	jmp .Lbb39
.Lbb35:
	movq %r13, %r12
	movq %rsi, %r13
	movq 8(%rax), %rsi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq donna_files_join
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	movq -48(%rbp), %rdi
	callq builder_dependencies_Dep
	movq %rbx, %rdi
	movq %rax, -56(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq -64(%rbp), %rbx
	movq -56(%rbp), %rax
	movq $1, (%rcx)
	movq %rax, 8(%rcx)
	movq %r12, 16(%rcx)
	movq %r8, %r12
	callq builder_dependencies_collect_deps
	movq %rax, (%rbx)
	jmp .Lbb39
.Lbb37:
	movq %r8, %r12
	movq %r13, %rdi
	callq donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %r8
	movq %rbx, (%rax)
	movq %r8, 8(%rax)
.Lbb39:
	movq %rbp, %rsp
	subq $112, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_collect_deps, @function
.size builder_dependencies_collect_deps, .-builder_dependencies_collect_deps
/* end function builder_dependencies_collect_deps */

.text
.balign 16
builder_dependencies_resolve_git_dep:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r12
	movq %rdx, -8(%rbp)
	movq %rsi, %r13
	movq %rdi, %rbx
	callq builder_dependencies_git_cache_dir
	movq %rax, %rdi
	movq %rdi, %rsi
	movq %rdi, %r14
	leaq str166(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_shell_run
	movq %r14, %rdi
	movq %rbx, %rsi
	callq donna_files_join
	movq %r12, %rdi
	movq %rax, %r14
	movq %rbx, %rsi
	callq builder_lock_find_rev
	movq %rbx, %rdi
	movq %rax, %r15
	movq %rdi, %rbx
	movq %r14, %rdi
	callq builder_lock_read_cached_rev
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	movq %r15, %rdi
	callq donna_string_is_empty
	movq %r15, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq -8(%rbp), %r12
	cmpq $0, %rax
	jz .Lbb44
	movq %rdi, %rbx
	movq %r14, %rdi
	callq donna_files_is_dir
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb43
	movq %rsi, %r15
	movq %r13, %rsi
	movq %rdi, %r12
	callq utilities_logger_fetch
	callq donna_shell_flush
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rdi, %r12
	movq %r13, %rdi
	callq builder_dependencies_pick_ref
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rsi, %r14
	movq %rdi, %r12
	movq %r13, %rdi
	callq builder_dependencies_clone_at_ref
	movq %r12, %rdi
	movq %rdi, %r12
	movq %r14, %rdi
	callq builder_dependencies_head_sha
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %r14
	movq %rsi, %r15
	movq %r14, %rsi
	movq %rdi, %r12
	movq %r15, %rdi
	callq builder_lock_write_cached_rev
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rdi, %r12
	callq builder_dependencies_Dep
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r13
	callq builder_lock_LockedDep
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb48
.Lbb43:
	movq %rdi, %r12
	movq %r14, %rdi
	callq builder_dependencies_head_sha
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %r14
	movq %rsi, %r15
	movq %r14, %rsi
	movq %rdi, %r12
	movq %r15, %rdi
	callq builder_lock_write_cached_rev
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rsi, %r12
	movq %rdi, %r12
	callq builder_dependencies_Dep
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r13
	callq builder_lock_LockedDep
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb48
.Lbb44:
	movq %r14, %r12
	movq %rdx, %r14
	movq %rdi, %rbx
	movq %r14, %rdi
	callq donna_string_equal
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -16(%rbp)
	cmpq $1, %rax
	jz .Lbb47
	movq %rsi, %r15
	movq %rdi, %rbx
	leaq str189(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_shell_run
	movq %rbx, %rdi
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %r12
	movq $1, (%r12)
	movq %r15, 8(%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r12)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %r13, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq $1, (%r12)
	leaq str199(%rip), %rax
	movq %rax, 8(%r12)
	movq %rbx, 16(%r12)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str203(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r12, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq str207(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rbx, 16(%rsi)
	movq %rdi, %rbx
	leaq str192(%rip), %rdi
	callq donna_shell_exec
	movq %rbx, %rdi
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %r12
	movq $1, (%r12)
	movq %r14, 8(%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r12)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str216(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq $1, (%r12)
	movq %r15, 8(%r12)
	movq %rbx, 16(%r12)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rsi
	movq -16(%rbp), %rbx
	movq $1, (%rsi)
	leaq str223(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r12, 16(%rsi)
	movq %rdi, %r12
	leaq str212(%rip), %rdi
	callq donna_shell_exec
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rsi, %r15
	movq %r14, %rsi
	movq %rdi, %r12
	movq %r15, %rdi
	callq builder_lock_write_cached_rev
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rdi, %r12
	callq builder_dependencies_Dep
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdx, %r14
	callq builder_lock_LockedDep
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb48
.Lbb47:
	movq %rdi, %r12
	callq builder_dependencies_Dep
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r13
	callq builder_lock_LockedDep
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
.Lbb48:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_resolve_git_dep, @function
.size builder_dependencies_resolve_git_dep, .-builder_dependencies_resolve_git_dep
/* end function builder_dependencies_resolve_git_dep */

.text
.balign 16
builder_dependencies_pick_ref:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	movq %rsi, %rdi
	leaq str260(%rip), %rsi
	movq %rdi, %r12
	callq builder_dependencies_opt_string
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	movq %r13, %rdi
	callq donna_string_is_empty
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb56
	leaq str269(%rip), %rsi
	movq %rdi, %rbx
	callq builder_dependencies_opt_string
	movq %rbx, %rdi
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
	jz .Lbb55
	leaq str277(%rip), %rsi
	movq %rdi, %r12
	callq builder_dependencies_opt_string
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movq %r12, %rdi
	callq donna_string_is_empty
	movq %r13, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rcx
	jz .Lbb53
	leaq str285(%rip), %rsi
	callq builder_dependencies_opt_string
	movq %rax, (%r12)
	jmp .Lbb54
.Lbb53:
	movq %rax, (%r12)
.Lbb54:
	movq %rax, (%rbx)
	jmp .Lbb58
.Lbb55:
	movq %rax, (%rbx)
	jmp .Lbb58
.Lbb56:
	movq %rbx, %rdi
	callq builder_dependencies_resolve_version_range
.Lbb58:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_pick_ref, @function
.size builder_dependencies_pick_ref, .-builder_dependencies_pick_ref
/* end function builder_dependencies_pick_ref */

.text
.balign 16
builder_dependencies_resolve_version_range:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	movq %rsi, %rdi
	callq builder_semver_parse_constraints
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq $1, (%r12)
	movq %rdi, 8(%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %r13
	movq $1, (%r13)
	leaq str295(%rip), %rax
	movq %rax, 8(%r13)
	movq %r12, 16(%r13)
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	leaq str299(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq str303(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r12, 16(%rsi)
	leaq str291(%rip), %rdi
	callq donna_shell_output
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str308(%rip), %rsi
	callq donna_string_split
	movq %rbx, %rsi
	movq %rax, %rdi
	callq builder_dependencies_find_best_tag
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_resolve_version_range, @function
.size builder_dependencies_resolve_version_range, .-builder_dependencies_resolve_version_range
/* end function builder_dependencies_resolve_version_range */

.text
.balign 16
builder_dependencies_find_best_tag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb81
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	movq %rsi, %r12
	leaq str322(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_index_of
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r14
	cmpq $-1, %r14
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb79
	movq %rsi, %r15
	movq %r14, %rsi
	addq $1, %rsi
	movq %rsi, -16(%rbp)
	movq %rdi, %r12
	callq donna_string_length
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rsi, %r12
	movq -16(%rbp), %rsi
	subq %r14, %rax
	movq %rax, %rdx
	subq $1, %rdx
	callq donna_string_slice
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r14
	leaq str337(%rip), %rsi
	movq %rdi, %r12
	callq donna_string_ends_with
	movq %r14, %rsi
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb76
	movq %rsi, %r15
	leaq str345(%rip), %rsi
	movq %rdi, %r14
	callq donna_string_starts_with
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -32(%rbp)
	cmpq $0, %rax
	jz .Lbb73
	movq %rdi, %r14
	callq donna_string_length
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	subq $10, %rdx
	movq %rsi, %r15
	movl $10, %esi
	callq donna_string_slice
	movq %r13, %rdi
	movq %rax, %r13
	movq %rdi, %r14
	movq %r13, %rdi
	callq builder_semver_parse
	movq %r15, %rsi
	movq %r14, %rdi
	movq -32(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -24(%rbp)
	movq (%rax), %rcx
	cmpq $-1, %rcx
	jz .Lbb70
	movq %rdi, %r14
	movq 8(%rax), %rdi
	movq %rsi, %r15
	callq builder_semver_satisfies
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rcx
	movq %r13, %rax
	movq -24(%rbp), %r14
	movq -32(%rbp), %r13
	subq $16, %rsp
	movq %rsp, %r15
	cmpq $0, %rcx
	jz .Lbb68
	movq %rax, (%r15)
	jmp .Lbb69
.Lbb68:
	callq builder_dependencies_find_best_tag
	movq %rax, (%r15)
.Lbb69:
	movq %rax, (%r14)
	jmp .Lbb72
.Lbb70:
	movq %r15, %r13
	callq builder_dependencies_find_best_tag
	movq %rax, (%r14)
.Lbb72:
	movq %rax, (%r13)
	jmp .Lbb75
.Lbb73:
	movq %r13, %rdi
	movq %r14, %r13
	movq %r15, %rsi
	callq builder_dependencies_find_best_tag
	movq %rax, (%r13)
.Lbb75:
	movq %rax, (%r12)
	jmp .Lbb78
.Lbb76:
	movq %r13, %rdi
	callq builder_dependencies_find_best_tag
	movq %rax, (%r12)
.Lbb78:
	movq %rax, (%rbx)
	jmp .Lbb82
.Lbb79:
	movq %r13, %rdi
	callq builder_dependencies_find_best_tag
	movq %rax, (%rbx)
	jmp .Lbb82
.Lbb81:
	leaq str317(%rip), %rax
.Lbb82:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_find_best_tag, @function
.size builder_dependencies_find_best_tag, .-builder_dependencies_find_best_tag
/* end function builder_dependencies_find_best_tag */

.text
.balign 16
builder_dependencies_clone_at_ref:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r14
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %r14, %rdi
	callq donna_string_is_empty
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb90
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %r13
	movq $1, (%r13)
	movq %r12, 8(%r13)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %rdi, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq $1, (%r13)
	movq %r14, 8(%r13)
	movq %rbx, 16(%r13)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str415(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq $1, (%r13)
	leaq str419(%rip), %rax
	movq %rax, 8(%r13)
	movq %rbx, 16(%r13)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str423(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq str427(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rbx, 16(%rsi)
	movq %rdi, %rbx
	leaq str405(%rip), %rdi
	callq donna_shell_exec
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz .Lbb89
	movq %rsi, %r13
	movq %rdi, %r12
	leaq str438(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_shell_run
	movq %r12, %rdi
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r12, %rdi
	movq %rax, %r15
	movq $1, (%r15)
	movq %r13, 8(%r15)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r15)
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq $1, (%r12)
	movq %rdi, 8(%r12)
	movq %r15, 16(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq str448(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r12, 16(%rsi)
	leaq str441(%rip), %rdi
	callq donna_shell_exec
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rcx
	jz .Lbb87
	movl $24, %edi
	callq malloc
	movq %r14, %rdx
	movq %rax, %r15
	movq $1, (%r15)
	movq %rdx, 8(%r15)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r15)
	movl $24, %edi
	callq malloc
	movq %rax, %r14
	movq $1, (%r14)
	leaq str463(%rip), %rax
	movq %rax, 8(%r14)
	movq %r15, 16(%r14)
	movl $24, %edi
	callq malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $1, (%r13)
	movq %rsi, 8(%r13)
	movq %r14, 16(%r13)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq str470(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r13, 16(%rsi)
	leaq str459(%rip), %rdi
	callq donna_shell_exec
	movq %rax, (%r12)
	jmp .Lbb88
.Lbb87:
	movq %rax, (%r12)
.Lbb88:
	movq %rax, (%rbx)
	jmp .Lbb91
.Lbb89:
	movq %rax, (%rbx)
	jmp .Lbb91
.Lbb90:
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r12
	movq $1, (%r12)
	movq %rsi, 8(%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r12)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %rdi, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	leaq str392(%rip), %rax
	movq %rax, 8(%r12)
	movq %rbx, 16(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str396(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq str400(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rbx, 16(%rsi)
	leaq str385(%rip), %rdi
	callq donna_shell_exec
.Lbb91:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_clone_at_ref, @function
.size builder_dependencies_clone_at_ref, .-builder_dependencies_clone_at_ref
/* end function builder_dependencies_clone_at_ref */

.text
.balign 16
builder_dependencies_git_cache_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq str478(%rip), %rdi
	callq donna_shell_getenv
	movq %rax, %rdi
	leaq str480(%rip), %rsi
	callq donna_files_join
	movq %rax, %rdi
	leaq str482(%rip), %rsi
	callq donna_files_join
	leave
	ret
.type builder_dependencies_git_cache_dir, @function
.size builder_dependencies_git_cache_dir, .-builder_dependencies_git_cache_dir
/* end function builder_dependencies_git_cache_dir */

.text
.balign 16
builder_dependencies_head_sha:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str485(%rip), %rax
	movq %rax, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq $1, (%r12)
	leaq str489(%rip), %rax
	movq %rax, 8(%r12)
	movq %rbx, 16(%r12)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %rdi, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq str496(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rbx, 16(%rsi)
	leaq str484(%rip), %rdi
	callq donna_shell_output
	movq %rax, %rdi
	callq donna_string_trim
	popq %r12
	popq %rbx
	leave
	ret
.type builder_dependencies_head_sha, @function
.size builder_dependencies_head_sha, .-builder_dependencies_head_sha
/* end function builder_dependencies_head_sha */

.text
.balign 16
builder_dependencies_opt_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq parsetoml_parsetoml_get_string
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb98
	movq 8(%rax), %rax
	jmp .Lbb99
.Lbb98:
	leaq str511(%rip), %rax
.Lbb99:
	leave
	ret
.type builder_dependencies_opt_string, @function
.size builder_dependencies_opt_string, .-builder_dependencies_opt_string
/* end function builder_dependencies_opt_string */

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
