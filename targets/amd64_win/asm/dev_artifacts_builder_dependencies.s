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
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_dependencies_Dep */

.text
.balign 16
.globl builder_dependencies_dep_name
builder_dependencies_dep_name:
	endbr64
	movq 8(%rcx), %rax
	ret
/* end function builder_dependencies_dep_name */

.text
.balign 16
.globl builder_dependencies_dep_path
builder_dependencies_dep_path:
	endbr64
	movq 16(%rcx), %rax
	ret
/* end function builder_dependencies_dep_path */

.text
.balign 16
.globl builder_dependencies_dep_src_dir
builder_dependencies_dep_src_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_dependencies_dep_path
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str18(%rip), %rdx
	callq donna_files_join
	subq $-32, %rsp
	leave
	ret
/* end function builder_dependencies_dep_src_dir */

.text
.balign 16
.globl builder_dependencies_dep_ffi_dir
builder_dependencies_dep_ffi_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_dependencies_dep_path
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str21(%rip), %rdx
	callq donna_files_join
	subq $-32, %rsp
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str23(%rip), %rdx
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq donna_files_join
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq builder_lock_read
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_read
	movq %rbx, %r9
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str27(%rip), %r8
	movq %rdx, %rbx
	movq %rcx, %rsi
	callq builder_dependencies_parse_section
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rsi
	movq 8(%rax), %r9
	subq $32, %rsp
	leaq str33(%rip), %r8
	callq builder_dependencies_parse_section
	movq %rdi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	movq %rdx, %rdi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq builder_lock_write
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str41(%rip), %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_files_join
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rsi, %rcx
	callq builder_lock_read
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_read
	movq %rbx, %r9
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str45(%rip), %r8
	callq builder_dependencies_parse_section
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq builder_lock_write
	movq %rsi, %rax
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str52(%rip), %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_files_join
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rsi, %rcx
	callq builder_lock_read
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_read
	movq %rbx, %r9
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str56(%rip), %r8
	callq builder_dependencies_parse_section
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq builder_lock_write
	movq %rsi, %rax
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_dependencies_resolve_dev_deps */

.text
.balign 16
builder_dependencies_parse_section:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %rbx
	movq %r8, %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq parsetoml_parsetoml_parse
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	callq parsetoml_parsetoml_is_err
	movq %r12, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb25
	subq $32, %rsp
	callq parsetoml_parsetoml_unwrap_table
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_get_table
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb23
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $4, %rcx
	jz Lbb20
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rbx, %r9
	subq $-32, %rsp
	leaq donna_nil(%rip), %rcx
	movq %rcx, (%rax)
	movq %r9, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb22
Lbb20:
	movq %rbx, %r9
	movq 8(%rax), %rcx
	subq $48, %rsp
	movq %rsp, %rax
	movq %r9, 32(%rax)
	movq %r9, %rbx
	leaq donna_nil(%rip), %r9
	movq %rbx, %r8
	callq builder_dependencies_collect_deps
	subq $-48, %rsp
	movq %rax, (%rdi)
Lbb22:
	movq %rax, (%rsi)
	jmp Lbb27
Lbb23:
	movq %rbx, %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %r9
	subq $-32, %rsp
	leaq donna_nil(%rip), %rcx
	movq %rcx, (%rax)
	movq %r9, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb27
Lbb25:
	movq %rbx, %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %r9
	subq $-32, %rsp
	leaq donna_nil(%rip), %rcx
	movq %rcx, (%rax)
	movq %r9, 8(%rax)
Lbb27:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_dependencies_parse_section */

.text
.balign 16
builder_dependencies_collect_deps:
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
	movq 48(%rbp), %rsi
	movq %r9, %rbx
	movq %r8, %r15
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb37
	movq 8(%rcx), %rax
	movq 16(%rcx), %r13
	movq (%rax), %rcx
	movq 8(%rax), %r14
	subq $32, %rsp
	movq %rdx, %r12
	leaq str121(%rip), %rdx
	movq %rcx, %rdi
	movq %r14, %rcx
	callq parsetoml_parsetoml_get_string
	movq %r14, %r8
	movq %r12, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq %rdi, -8(%rbp)
	movq %r8, %r14
	movq (%rax), %r8
	cmpq $0, %r8
	jz Lbb35
	subq $32, %rsp
	movq %rdx, %r12
	leaq str139(%rip), %rdx
	movq %rcx, %rdi
	movq %r14, %rcx
	callq parsetoml_parsetoml_get_string
	movq %r14, %r8
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rsi, %r12
	movq -8(%rbp), %rsi
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r9
	cmpq $1, %r9
	jz Lbb32
	movq %rdx, %r14
	movq 8(%rax), %rdx
	subq $32, %rsp
	movq %r15, %r9
	callq builder_dependencies_resolve_git_dep
	movq %r13, %rcx
	movq %rax, %rdx
	movq %r12, %rax
	subq $-32, %rsp
	movq (%rdx), %r12
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rcx, %r13
	movq %rax, %rcx
	callq builder_lock_upsert
	movq %r13, %rcx
	movq %rax, -16(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r9
	movq -16(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%r9)
	movq %r12, 8(%r9)
	movq %rbx, 16(%r9)
	subq $48, %rsp
	movq %rsp, %r10
	movq %rax, 32(%r10)
	callq builder_dependencies_collect_deps
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb34
Lbb32:
	movq %r13, %rcx
	movq %r15, %r8
	subq $48, %rsp
	movq %rsp, %rax
	movq %r12, 32(%rax)
	movq %rbx, %r9
	movq %r8, %r15
	movq %rcx, %r12
	callq builder_dependencies_collect_deps
	subq $-48, %rsp
	movq %rax, (%rdi)
Lbb34:
	movq %rax, (%rsi)
	jmp Lbb39
Lbb35:
	movq %r13, %r12
	xchgq %rdi, %rsi
	movq %rdx, %r14
	movq 8(%rax), %rdx
	subq $32, %rsp
	movq %rcx, %r13
	movq %r14, %rcx
	callq donna_files_join
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_dependencies_Dep
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	movq $1, (%r9)
	movq %r12, 8(%r9)
	movq %rbx, 16(%r9)
	subq $48, %rsp
	movq %rsp, %rax
	movq %rdi, 32(%rax)
	callq builder_dependencies_collect_deps
	subq $-48, %rsp
	movq %rax, (%rsi)
	jmp Lbb39
Lbb37:
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rdi, (%rax)
	movq %rsi, 8(%rax)
Lbb39:
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
/* end function builder_dependencies_collect_deps */

.text
.balign 16
builder_dependencies_resolve_git_dep:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %r8, %rdi
	movq %rdx, %rbx
	movq %rcx, %rsi
	subq $32, %rsp
	callq builder_dependencies_git_cache_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdx
	movq %rcx, %r13
	leaq str166(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	movq %r13, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rdx
	callq donna_files_join
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rdx
	callq builder_lock_find_rev
	movq %rsi, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r12, %rcx
	callq builder_lock_read_cached_rev
	movq %rsi, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r14, %rcx
	callq donna_string_is_empty
	movq %r14, %r8
	movq %r13, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb44
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r12, %rcx
	callq donna_files_is_dir
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb43
	subq $32, %rsp
	movq %rdx, %r13
	movq %rbx, %rdx
	movq %rcx, %rdi
	callq utilities_logger_fetch
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_flush
	movq %r13, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq builder_dependencies_pick_ref
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq builder_dependencies_clone_at_ref
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r12, %rcx
	callq builder_dependencies_head_sha
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %r12, %rdx
	movq %rcx, %rdi
	movq %r13, %rcx
	callq builder_lock_write_cached_rev
	movq %r13, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	callq builder_dependencies_Dep
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_lock_LockedDep
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb48
Lbb43:
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r12, %rcx
	callq builder_dependencies_head_sha
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %r12, %rdx
	movq %rcx, %rdi
	movq %r13, %rcx
	callq builder_lock_write_cached_rev
	movq %r13, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rcx, %rdi
	callq builder_dependencies_Dep
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_lock_LockedDep
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb48
Lbb44:
	movq %r12, %rdi
	movq %r8, %r12
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r12, %rcx
	callq donna_string_equal
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb47
	subq $32, %rsp
	movq %rdx, %r13
	movq %rcx, %rdi
	leaq str189(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	movq $1, (%r14)
	movq %r13, 8(%r14)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r14)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	movq %r14, 16(%rdi)
	subq $32, %rsp
	movq %rcx, %r14
	movl $24, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	movq $1, (%r14)
	leaq str199(%rip), %rax
	movq %rax, 8(%r14)
	movq %rdi, 16(%r14)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	leaq str203(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r14, 16(%rdi)
	subq $32, %rsp
	movq %rcx, %r14
	movl $24, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str207(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str192(%rip), %rcx
	callq donna_shell_exec
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %r12, 8(%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	subq $32, %rsp
	movq %rcx, %r14
	movl $24, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	movq $1, (%r14)
	leaq str216(%rip), %rax
	movq %rax, 8(%r14)
	movq %rdi, 16(%r14)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %r13, 8(%rdi)
	movq %r14, 16(%rdi)
	subq $32, %rsp
	movq %rcx, %r14
	movl $24, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str223(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str212(%rip), %rcx
	callq donna_shell_exec
	movq %r13, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %r12, %rdx
	movq %rcx, %rdi
	movq %r13, %rcx
	callq builder_lock_write_cached_rev
	movq %r13, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	callq builder_dependencies_Dep
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r12
	callq builder_lock_LockedDep
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb48
Lbb47:
	subq $32, %rsp
	movq %rcx, %rdi
	callq builder_dependencies_Dep
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_lock_LockedDep
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb48:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_dependencies_resolve_git_dep */

.text
.balign 16
builder_dependencies_pick_ref:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	leaq str260(%rip), %rdx
	movq %rcx, %rdi
	callq builder_dependencies_opt_string
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq donna_string_is_empty
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb56
	subq $32, %rsp
	leaq str269(%rip), %rdx
	movq %rcx, %rsi
	callq builder_dependencies_opt_string
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
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
	jz Lbb55
	subq $32, %rsp
	leaq str277(%rip), %rdx
	movq %rcx, %rdi
	callq builder_dependencies_opt_string
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq donna_string_is_empty
	movq %rbx, %rcx
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rdx
	jz Lbb53
	subq $32, %rsp
	leaq str285(%rip), %rdx
	callq builder_dependencies_opt_string
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb54
Lbb53:
	movq %rax, (%rdi)
Lbb54:
	movq %rax, (%rsi)
	jmp Lbb58
Lbb55:
	movq %rax, (%rsi)
	jmp Lbb58
Lbb56:
	movq %rsi, %rcx
	subq $32, %rsp
	callq builder_dependencies_resolve_version_range
	subq $-32, %rsp
Lbb58:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_dependencies_pick_ref */

.text
.balign 16
builder_dependencies_resolve_version_range:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	callq builder_semver_parse_constraints
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %rcx, 8(%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	leaq str295(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rdi, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	leaq str299(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str303(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $32, %rsp
	leaq str291(%rip), %rcx
	callq donna_shell_output
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str308(%rip), %rdx
	callq donna_string_split
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_dependencies_find_best_tag
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_dependencies_resolve_version_range */

.text
.balign 16
builder_dependencies_find_best_tag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb80
	movq 8(%rax), %rcx
	movq 16(%rax), %r12
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str322(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_index_of
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	cmpq $-1, %rbx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb78
	movq %rbx, %r14
	addq $1, %r14
	subq $32, %rsp
	movq %rcx, %r13
	callq donna_string_length
	movq %r14, %rdx
	movq %r13, %rcx
	subq $-32, %rsp
	subq %rbx, %rax
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	callq donna_string_slice
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str337(%rip), %rdx
	movq %rcx, %rdi
	callq donna_string_ends_with
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb75
	subq $32, %rsp
	movq %rdx, %r14
	leaq str345(%rip), %rdx
	movq %rcx, %rbx
	callq donna_string_starts_with
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb72
	subq $32, %rsp
	movq %rcx, %r13
	callq donna_string_length
	movq %r14, %rdx
	movq %r13, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $10, %r8
	subq $32, %rsp
	movq %rdx, %r14
	movl $10, %edx
	callq donna_string_slice
	movq %r12, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movq %r13, %rcx
	callq builder_semver_parse
	movq %r14, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %r8
	cmpq $-1, %r8
	jz Lbb70
	movq %rcx, %r14
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rdx, %r15
	callq builder_semver_satisfies
	movq %r15, %rdx
	movq %r14, %rcx
	movq %rax, %r8
	movq %r13, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $0, %r8
	jz Lbb68
	movq %rax, (%r13)
	jmp Lbb69
Lbb68:
	subq $32, %rsp
	callq builder_dependencies_find_best_tag
	subq $-32, %rsp
	movq %rax, (%r13)
Lbb69:
	movq %rax, (%r12)
	jmp Lbb71
Lbb70:
	subq $32, %rsp
	callq builder_dependencies_find_best_tag
	subq $-32, %rsp
	movq %rax, (%r12)
Lbb71:
	movq %rax, (%rbx)
	jmp Lbb74
Lbb72:
	movq %r12, %rcx
	movq %r14, %rdx
	subq $32, %rsp
	callq builder_dependencies_find_best_tag
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb74:
	movq %rax, (%rdi)
	jmp Lbb77
Lbb75:
	movq %r12, %rcx
	subq $32, %rsp
	callq builder_dependencies_find_best_tag
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb77:
	movq %rax, (%rsi)
	jmp Lbb81
Lbb78:
	movq %r12, %rcx
	movq %rdi, %rdx
	subq $32, %rsp
	callq builder_dependencies_find_best_tag
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb81
Lbb80:
	leaq str317(%rip), %rax
Lbb81:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %r8, %r12
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r12, %rcx
	callq donna_string_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb89
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %rdi, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %rcx, 8(%rsi)
	movq %rbx, 16(%rsi)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r12, 8(%rbx)
	movq %rsi, 16(%rbx)
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	leaq str415(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rbx, 16(%rsi)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	leaq str419(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rsi, 16(%rbx)
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	leaq str423(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rbx, 16(%rsi)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str427(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str405(%rip), %rcx
	callq donna_shell_exec
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb88
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rcx, %rdi
	leaq str438(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	movq $1, (%r13)
	movq %rbx, 8(%r13)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %rcx, 8(%rdi)
	movq %r13, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str448(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $32, %rsp
	leaq str441(%rip), %rcx
	callq donna_shell_exec
	subq $-32, %rsp
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rcx
	jz Lbb86
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %r12, %r8
	movq %rax, %r13
	subq $-32, %rsp
	movq $1, (%r13)
	movq %r8, 8(%r13)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	leaq str463(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %rdx, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str470(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $32, %rsp
	leaq str459(%rip), %rcx
	callq donna_shell_exec
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb87
Lbb86:
	movq %rax, (%rdi)
Lbb87:
	movq %rax, (%rsi)
	jmp Lbb90
Lbb88:
	movq %rax, (%rsi)
	jmp Lbb90
Lbb89:
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %rdx, 8(%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %rcx, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	leaq str392(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rsi, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	leaq str396(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str400(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $32, %rsp
	leaq str385(%rip), %rcx
	callq donna_shell_exec
	subq $-32, %rsp
Lbb90:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_dependencies_clone_at_ref */

.text
.balign 16
builder_dependencies_git_cache_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str478(%rip), %rcx
	callq donna_shell_getenv
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str480(%rip), %rdx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str482(%rip), %rdx
	callq donna_files_join
	subq $-32, %rsp
	leave
	ret
/* end function builder_dependencies_git_cache_dir */

.text
.balign 16
builder_dependencies_head_sha:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	leaq str485(%rip), %rax
	movq %rax, 8(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	leaq str489(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rsi, 16(%rdi)
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %rcx, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str496(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $32, %rsp
	leaq str484(%rip), %rcx
	callq donna_shell_output
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_dependencies_head_sha */

.text
.balign 16
builder_dependencies_opt_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq parsetoml_parsetoml_get_string
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb97
	movq 8(%rax), %rax
	jmp Lbb98
Lbb97:
	leaq str511(%rip), %rax
Lbb98:
	leave
	ret
/* end function builder_dependencies_opt_string */

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

