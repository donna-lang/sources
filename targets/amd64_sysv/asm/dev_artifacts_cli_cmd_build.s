.data
.balign 8
.globl cli_cmd_build_BuildDebug
cli_cmd_build_BuildDebug:
	.quad 0
/* end data */

.data
.balign 8
str27:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str29:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str45:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str56:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str57:
	.ascii "debug"
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str126:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str164:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str193:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str238:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str246:
	.ascii ".link.log"
	.byte 0
/* end data */

.data
.balign 8
str249:
	.ascii " > "
	.byte 0
/* end data */

.data
.balign 8
str253:
	.ascii " 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str267:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str280:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str289:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str291:
	.ascii "target"
	.byte 0
/* end data */

.data
.balign 8
str296:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str305:
	.ascii "bin"
	.byte 0
/* end data */

.data
.balign 8
str308:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str317:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str320:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str330:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str338:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str340:
	.ascii "target"
	.byte 0
/* end data */

.data
.balign 8
str345:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str355:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str365:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str375:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str385:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
str387:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str389:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str392:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
str394:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str396:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str401:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str403:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
str406:
	.ascii "  command: "
	.byte 0
/* end data */

.data
.balign 8
str416:
	.ascii "  linker did not print an error message"
	.byte 0
/* end data */

.data
.balign 8
str418:
	.ascii "  linker output:"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str423:
	.ascii "hint:"
	.byte 0
/* end data */

.data
.balign 8
str425:
	.ascii " check missing C symbols, FFI objects, or linker flags"
	.byte 0
/* end data */

.data
.balign 8
str439:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str441:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str443:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str455:
	.ascii "    "
	.byte 0
/* end data */

.data
.balign 8
str458:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str479:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str483:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str485:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str598:
	.ascii "main"
	.byte 0
/* end data */

.data
.balign 8
str608:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str616:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str620:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
str625:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str637:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str642:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str646:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str651:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str655:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str660:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
str665:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str672:
	.ascii "-O2"
	.byte 0
/* end data */

.data
.balign 8
str679:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str686:
	.ascii ".exe"
	.byte 0
/* end data */

.data
.balign 8
str689:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str697:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
str699:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str703:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str704:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str705:
	.ascii "'"
	.byte 92
	.ascii "''"
	.byte 0
/* end data */

.data
.balign 8
str708:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str716:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str729:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str752:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str759:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str761:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
str768:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str775:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str779:
	.ascii "release"
	.byte 0
/* end data */

.data
.balign 8
str788:
	.ascii "target"
	.byte 0
/* end data */

.data
.balign 8
str790:
	.ascii "all"
	.byte 0
/* end data */

.data
.balign 8
str854:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str882:
	.ascii "amd64"
	.byte 0
/* end data */

.data
.balign 8
str887:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str890:
	.ascii "x86_64"
	.byte 0
/* end data */

.data
.balign 8
str895:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str898:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str903:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str906:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str911:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str914:
	.ascii "x86_64_apple"
	.byte 0
/* end data */

.data
.balign 8
str919:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str922:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str927:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str930:
	.ascii "x86_64_win"
	.byte 0
/* end data */

.data
.balign 8
str935:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str938:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
str943:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
str946:
	.ascii "aarch64"
	.byte 0
/* end data */

.data
.balign 8
str951:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
str954:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str959:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str962:
	.ascii "aarch64_apple"
	.byte 0
/* end data */

.data
.balign 8
str967:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str970:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str972:
	.ascii ": unknown release target "
	.byte 0
/* end data */

.data
.balign 8
str979:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str983:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
str987:
	.ascii "amd64_win"
	.byte 0
/* end data */

.data
.balign 8
str991:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str995:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str999:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str1007:
	.ascii "uname -m | grep -q 'arm64"
	.byte 92
	.ascii "|aarch64' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str1015:
	.ascii "arm64_apple"
	.byte 0
/* end data */

.data
.balign 8
str1016:
	.ascii "amd64_apple"
	.byte 0
/* end data */

.data
.balign 8
str1018:
	.ascii "uname -m | grep -q 'arm64"
	.byte 92
	.ascii "|aarch64' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str1026:
	.ascii "arm64"
	.byte 0
/* end data */

.data
.balign 8
str1027:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str1032:
	.ascii "amd64_sysv"
	.byte 0
/* end data */

.data
.balign 8
str1037:
	.ascii "amd64"
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_build_BuildOk
cli_cmd_build_BuildOk:
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
.type cli_cmd_build_BuildOk, @function
.size cli_cmd_build_BuildOk, .-cli_cmd_build_BuildOk
/* end function cli_cmd_build_BuildOk */

.text
.balign 16
.globl cli_cmd_build_BuildFailed
cli_cmd_build_BuildFailed:
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
.type cli_cmd_build_BuildFailed, @function
.size cli_cmd_build_BuildFailed, .-cli_cmd_build_BuildFailed
/* end function cli_cmd_build_BuildFailed */

.text
.balign 16
.globl cli_cmd_build_BuildRelease
cli_cmd_build_BuildRelease:
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
.type cli_cmd_build_BuildRelease, @function
.size cli_cmd_build_BuildRelease, .-cli_cmd_build_BuildRelease
/* end function cli_cmd_build_BuildRelease */

.text
.balign 16
.globl cli_cmd_build_run
cli_cmd_build_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	callq cli_cmd_build_build_dir_arg
	movq %rbx, %rdi
	movq %rax, %rbx
	callq cli_cmd_build_build_config
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb13
	movq 8(%rax), %r12
	movq %rdi, %rbx
	callq builder_scanner_scan
	movq %r12, %rdx
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb12
	movq 8(%rax), %rsi
	callq cli_cmd_build_build_project_with_config
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz .Lbb10
	leaq str45(%rip), %rax
	movq %rax, (%rcx)
	leaq str45(%rip), %rax
	jmp .Lbb11
.Lbb10:
	movq 8(%rax), %rax
	movq %rax, (%rcx)
.Lbb11:
	movq %rax, (%rbx)
	jmp .Lbb14
.Lbb12:
	movq 8(%rax), %r12
	leaq str27(%rip), %rdi
	callq utilities_colors_red
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq str29(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb14
.Lbb13:
	movq 8(%rax), %rax
.Lbb14:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_run, @function
.size cli_cmd_build_run, .-cli_cmd_build_run
/* end function cli_cmd_build_run */

.text
.balign 16
.globl cli_cmd_build_build_project
cli_cmd_build_build_project:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq cli_cmd_build_BuildDebug(%rip), %rdx
	callq cli_cmd_build_build_project_with_config
	leave
	ret
.type cli_cmd_build_build_project, @function
.size cli_cmd_build_build_project, .-cli_cmd_build_build_project
/* end function cli_cmd_build_build_project */

.text
.balign 16
.globl cli_cmd_build_build_project_with_config
cli_cmd_build_build_project_with_config:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdx), %rax
	cmpq $0, %rax
	jz .Lbb19
	movq 8(%rdx), %rdx
	callq cli_cmd_build_build_release_targets
	jmp .Lbb20
.Lbb19:
	leaq str57(%rip), %rcx
	leaq str56(%rip), %rdx
	callq cli_cmd_build_build_project_target
.Lbb20:
	leave
	ret
.type cli_cmd_build_build_project_with_config, @function
.size cli_cmd_build_build_project_with_config, .-cli_cmd_build_build_project_with_config
/* end function cli_cmd_build_build_project_with_config */

.text
.balign 16
cli_cmd_build_build_release_targets:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb31
	movq 8(%rax), %rdx
	movq 16(%rax), %r13
	leaq str75(%rip), %rcx
	movq %rsi, %r12
	movq %rdi, %rbx
	callq cli_cmd_build_build_project_target
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb30
	movq 8(%rax), %r15
	callq cli_cmd_build_build_release_targets
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb28
	movq 8(%rax), %r14
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %r15
	jz .Lbb26
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
	jmp .Lbb27
.Lbb26:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r13)
.Lbb27:
	movq %rax, (%r12)
	jmp .Lbb29
.Lbb28:
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb29:
	movq %rax, (%rbx)
	jmp .Lbb32
.Lbb30:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb32
.Lbb31:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $0, 8(%rax)
.Lbb32:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_build_release_targets, @function
.size cli_cmd_build_build_release_targets, .-cli_cmd_build_build_release_targets
/* end function cli_cmd_build_build_release_targets */

.text
.balign 16
cli_cmd_build_build_project_target:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $216, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r12
	movq %rdx, %r14
	movq %rsi, %rbx
	movq %rdi, %r13
	callq donna_time_now_us
	movq %r13, %rdi
	movq %rax, -64(%rbp)
	movq %rdi, %r13
	movq %rbx, %rdi
	callq builder_scanner_project_build_dir
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, -8(%rbp)
	movq %rsi, %rdx
	movq %rsi, %r14
	movq %r12, %rsi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq cli_cmd_build_target_root_dir
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, -16(%rbp)
	movq %rsi, %rdx
	movq %rsi, %r14
	movq %r12, %rsi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq cli_cmd_build_bin_dir_for_mode
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %r13
	movq %rsi, %rdx
	movq %rsi, %r15
	movq %r12, %rsi
	movq %rdi, %r14
	movq %rbx, %rdi
	callq cli_cmd_build_artifacts_dir_for_mode
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, -24(%rbp)
	movq %rsi, %rdx
	movq %rsi, %r15
	movq %r12, %rsi
	movq %rdi, %r14
	movq %rbx, %rdi
	callq cli_cmd_build_deps_build_dir_for_mode
	movq %r14, %rdi
	movq %rax, -40(%rbp)
	movq %rdi, %r14
	movq -8(%rbp), %rdi
	callq donna_files_mkdir
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rsi, %r15
	movq %r12, %rsi
	movq %rdi, %r14
	movq %rbx, %rdi
	callq cli_cmd_build_mkdir_release_parents
	movq %r14, %rdi
	movq %rdi, %r14
	movq -16(%rbp), %rdi
	callq donna_files_mkdir
	movq %r14, %rdi
	movq %rdi, %r14
	movq %r13, %rdi
	callq donna_files_mkdir
	movq %r14, %rdi
	movq -24(%rbp), %rdx
	movq %rdi, %r14
	movq %rdx, %rdi
	callq donna_files_mkdir
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rsi, %r15
	leaq str126(%rip), %rsi
	movq %rdi, %r14
	callq donna_files_join
	movq %r15, %rsi
	movq %rax, %rdi
	movq %rsi, %r15
	movq %r14, %rsi
	callq builder_dependencies_resolve_deps_checked
	movq %r15, %rsi
	movq %r14, %rdi
	movq -24(%rbp), %rdx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb62
	movq 8(%rax), %rax
	movq %rax, -32(%rbp)
	movq %rsi, %rcx
	movq %rdx, %r15
	movq %r12, %rdx
	movq %rsi, %r14
	movq %r15, %rsi
	callq cli_cmd_build_compile_ffi_for_mode
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %r8
	movq %rdi, %r13
	movq -32(%rbp), %rdi
	movq %rsi, %r14
	movq -40(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rax
	movq %r14, 0(%rax)
	movq %r12, %r9
	leaq donna_nil(%rip), %rcx
	movq %rdx, %r15
	leaq donna_nil(%rip), %rdx
	callq cli_cmd_build_compile_deps
	movq %r13, %rdi
	subq $-16, %rsp
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -96(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb60
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq %rcx, -56(%rbp)
	movq 8(%rax), %rcx
	movq %rcx, -80(%rbp)
	movq 16(%rax), %r13
	movq %r13, -112(%rbp)
	movq 24(%rax), %r8
	movq %r8, -48(%rbp)
	movq %rdi, %r13
	movq %rbx, %rdi
	callq builder_scanner_project_src_dir
	movq %r15, %rdx
	movq %r14, %rsi
	movq %rax, %rdi
	movq -48(%rbp), %r8
	movq -56(%rbp), %rcx
	movq -64(%rbp), %r14
	movq %rsi, %r15
	leaq str164(%rip), %rsi
	callq builder_pipeline_compile_dir
	movq %r15, %rsi
	movq %r13, %rdi
	movq -96(%rbp), %r13
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -152(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb57
	movq 8(%rax), %rax
	movq %rdi, %r13
	movq (%rax), %rdi
	movq %rsi, %r15
	movq 8(%rax), %rsi
	movq %rsi, -72(%rbp)
	callq cli_cmd_build_has_public_main
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %r8
	movq -152(%rbp), %rdx
	movq -96(%rbp), %rax
	movq %rsi, %r15
	movq -72(%rbp), %rsi
	movq %rdi, %r13
	movq -80(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -144(%rbp)
	cmpq $0, %r8
	jz .Lbb54
	callq donna_list_append
	movq %rax, -88(%rbp)
	callq builder_pipeline_qbe_available
	movq %r13, %rdi
	movq %rax, %rcx
	movq -144(%rbp), %r13
	movq -152(%rbp), %rdx
	movq -96(%rbp), %rax
	subq $16, %rsp
	movq %rsp, %r8
	movq %r8, -160(%rbp)
	cmpq $0, %rcx
	jz .Lbb51
	movq %rdi, %r13
	movq %r12, %rdi
	callq cli_cmd_build_c_compiler_available_for_mode
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %r9
	movq -160(%rbp), %r8
	movq -144(%rbp), %r13
	movq -152(%rbp), %rdx
	movq -96(%rbp), %rax
	movq %rdi, %r15
	movq -88(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -168(%rbp)
	cmpq $0, %r9
	jz .Lbb48
	movq %rsi, %rdx
	movq %rsi, %r13
	movq %r12, %rsi
	callq cli_cmd_build_run_qbe_for_mode
	movq %r13, %rsi
	movq %rbx, %rdi
	movq -168(%rbp), %rcx
	movq -160(%rbp), %r8
	movq %rsi, %r13
	movq -144(%rbp), %rsi
	movq -152(%rbp), %rdx
	movq -96(%rbp), %rbx
	subq $16, %rsp
	movq %rsp, %r9
	movq %r9, -200(%rbp)
	movq (%rax), %r9
	cmpq $1, %r9
	setz %r9b
	movzbq %r9b, %r9
	cmpl $0, %r9d
	jnz .Lbb45
	movq 8(%rax), %rax
	movq %rax, -128(%rbp)
	callq builder_scanner_project_name
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	callq cli_cmd_build_output_name_for_target
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	callq donna_files_join
	movq %r13, %rsi
	movq %rax, %r15
	movq %rsi, %r13
	movq %r12, %rdi
	callq cli_cmd_build_cc_flags_for_mode
	movq %r13, %rsi
	movq %rax, -120(%rbp)
	movq %r12, %rdi
	callq cli_cmd_build_linker_flags_for_mode
	movq %rax, -104(%rbp)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %rax, %r13
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq %r13, %rax
	movq -104(%rbp), %rdi
	movq -112(%rbp), %r13
	movq $1, (%rsi)
	leaq str238(%rip), %rcx
	movq %rcx, 8(%rsi)
	movq %rax, 16(%rsi)
	callq donna_list_append
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	movq -120(%rbp), %rdi
	callq donna_list_append
	movq %r13, %rdi
	movq %rax, %rsi
	movq -128(%rbp), %r13
	callq donna_list_append
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_list_append
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rsi, %r13
	leaq str246(%rip), %rsi
	movq %rdi, %r12
	movq %r15, %rdi
	callq __rt_str_concat
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	callq cli_cmd_build_c_command_for_mode
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rsi, %r13
	leaq str249(%rip), %rsi
	movq %rdi, %r12
	movq %r13, %rdi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, -136(%rbp)
	movq %rdi, %r12
	callq cli_cmd_build_sh_quote
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	movq -136(%rbp), %rdi
	callq __rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq str253(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_shell_run
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq -168(%rbp), %rcx
	movq -160(%rbp), %rax
	movq -144(%rbp), %r13
	movq -152(%rbp), %r12
	cmpq $0, %rdx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %r8
	movq %r8, -184(%rbp)
	cmpq $0, %rdx
	jz .Lbb42
	callq donna_files_delete
	movq %r15, %rdi
	movq %r14, %r15
	movq -160(%rbp), %r14
	callq cli_cmd_build_maybe_codesign
	callq donna_time_now_us
	movq %rax, %rcx
	movq %r15, %rax
	movq -168(%rbp), %r15
	movq %rcx, %rsi
	subq %rax, %rsi
	leaq str267(%rip), %rdi
	callq utilities_logger_ok
	movl $16, %edi
	callq malloc
	movq -184(%rbp), %rdx
	movq -200(%rbp), %rcx
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdx)
	jmp .Lbb44
.Lbb42:
	movq %rcx, %r15
	movq %rax, %r14
	callq cli_cmd_build_linker_failed_error
	movq %rax, -176(%rbp)
	movl $16, %edi
	callq malloc
	movq -184(%rbp), %rdx
	movq -200(%rbp), %rcx
	movq -176(%rbp), %rsi
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	movq %rax, (%rdx)
.Lbb44:
	movq %rax, (%rcx)
	jmp .Lbb47
.Lbb45:
	movq %rcx, %r15
	movq %r8, %r14
	movq %rsi, %r13
	movq %rdx, %r12
	movq 8(%rax), %rdx
	movq %rdx, -192(%rbp)
	movl $16, %edi
	callq malloc
	movq -200(%rbp), %rcx
	movq -192(%rbp), %rdx
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %rax, (%rcx)
.Lbb47:
	movq %rax, (%r15)
	jmp .Lbb50
.Lbb48:
	movq %rcx, %r15
	movq %r8, %r14
	movq %rdx, %r12
	movq %rax, %rbx
	callq cli_cmd_build_c_compiler_missing_error
	movq %rax, -208(%rbp)
	movl $16, %edi
	callq malloc
	movq -208(%rbp), %rcx
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rax, (%r15)
.Lbb50:
	movq %rax, (%r14)
	jmp .Lbb53
.Lbb51:
	movq %r8, %r14
	movq %rdx, %r12
	movq %rax, %rbx
	callq cli_cmd_build_qbe_missing_error
	movq %rax, %r15
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
.Lbb53:
	movq %rax, (%r13)
	jmp .Lbb56
.Lbb54:
	movq %rdx, %r12
	movq %r13, %r15
	movq %rcx, %r13
	movq %rbx, %rdi
	movq %rax, %rbx
	callq builder_scanner_project_name
	movq %r15, %rdi
	movq %rax, %rsi
	callq donna_files_join
	movq %rax, %rdi
	callq donna_files_delete
	callq donna_time_now_us
	movq %rax, %rsi
	subq %r14, %rsi
	leaq str193(%rip), %rdi
	callq utilities_logger_ok
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $0, 8(%rax)
	movq %rax, (%r13)
.Lbb56:
	movq %rax, (%r12)
	jmp .Lbb59
.Lbb57:
	movq %rdx, %r12
	movq %r13, %rbx
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb59:
	movq %rax, (%rbx)
	jmp .Lbb63
.Lbb60:
	movq %r13, %rbx
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb63
.Lbb62:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
.Lbb63:
	movq %rbp, %rsp
	subq $256, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_build_project_target, @function
.size cli_cmd_build_build_project_target, .-cli_cmd_build_build_project_target
/* end function cli_cmd_build_build_project_target */

.text
.balign 16
cli_cmd_build_target_root_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdx, %rbx
	movq %rdi, %r12
	movq %rsi, %rdi
	leaq str280(%rip), %rsi
	callq donna_string_equal
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb66
	callq builder_scanner_project_build_dir
	movq %rax, %rdi
	leaq str289(%rip), %rsi
	callq donna_files_join
	movq %rax, %rdi
	leaq str291(%rip), %rsi
	callq donna_files_join
	movq %rbx, %rdi
	movq %rax, %rbx
	callq cli_cmd_build_release_target_dir
	movq %rbx, %rdi
	movq %rax, %rsi
	callq donna_files_join
	jmp .Lbb67
.Lbb66:
	callq builder_scanner_project_dev_dir
.Lbb67:
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_target_root_dir, @function
.size cli_cmd_build_target_root_dir, .-cli_cmd_build_target_root_dir
/* end function cli_cmd_build_target_root_dir */

.text
.balign 16
cli_cmd_build_bin_dir_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	leaq str296(%rip), %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_string_equal
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb70
	callq cli_cmd_build_target_root_dir
	movq %rax, %rdi
	leaq str305(%rip), %rsi
	callq donna_files_join
	jmp .Lbb71
.Lbb70:
	callq builder_scanner_project_bin_dir
.Lbb71:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_bin_dir_for_mode, @function
.size cli_cmd_build_bin_dir_for_mode, .-cli_cmd_build_bin_dir_for_mode
/* end function cli_cmd_build_bin_dir_for_mode */

.text
.balign 16
cli_cmd_build_artifacts_dir_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	leaq str308(%rip), %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_string_equal
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb74
	callq cli_cmd_build_target_root_dir
	movq %rax, %rdi
	leaq str317(%rip), %rsi
	callq donna_files_join
	jmp .Lbb75
.Lbb74:
	callq builder_scanner_project_dev_artifacts_dir
.Lbb75:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_artifacts_dir_for_mode, @function
.size cli_cmd_build_artifacts_dir_for_mode, .-cli_cmd_build_artifacts_dir_for_mode
/* end function cli_cmd_build_artifacts_dir_for_mode */

.text
.balign 16
cli_cmd_build_deps_build_dir_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	leaq str320(%rip), %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_string_equal
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb78
	callq cli_cmd_build_target_root_dir
	jmp .Lbb79
.Lbb78:
	callq builder_scanner_project_build_dir
.Lbb79:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_deps_build_dir_for_mode, @function
.size cli_cmd_build_deps_build_dir_for_mode, .-cli_cmd_build_deps_build_dir_for_mode
/* end function cli_cmd_build_deps_build_dir_for_mode */

.text
.balign 16
cli_cmd_build_mkdir_release_parents:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rsi, %rdi
	leaq str330(%rip), %rsi
	callq donna_string_equal
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb82
	callq builder_scanner_project_build_dir
	movq %rax, %rdi
	leaq str338(%rip), %rsi
	callq donna_files_join
	movq %rax, %rdi
	leaq str340(%rip), %rsi
	movq %rdi, %rbx
	callq donna_files_join
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_files_mkdir
	movq %rbx, %rdi
	callq donna_files_mkdir
	jmp .Lbb83
.Lbb82:
	movl $0, %eax
.Lbb83:
	popq %rbx
	leave
	ret
.type cli_cmd_build_mkdir_release_parents, @function
.size cli_cmd_build_mkdir_release_parents, .-cli_cmd_build_mkdir_release_parents
/* end function cli_cmd_build_mkdir_release_parents */

.text
.balign 16
cli_cmd_build_compile_ffi_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rcx, %r13
	movq %rdi, %rbx
	movq %rdx, %rdi
	movq %rsi, %r12
	leaq str345(%rip), %rsi
	callq donna_string_equal
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb86
	callq builder_pipeline_compile_ffi
	jmp .Lbb87
.Lbb86:
	callq builder_pipeline_compile_ffi_target
.Lbb87:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_compile_ffi_for_mode, @function
.size cli_cmd_build_compile_ffi_for_mode, .-cli_cmd_build_compile_ffi_for_mode
/* end function cli_cmd_build_compile_ffi_for_mode */

.text
.balign 16
cli_cmd_build_run_qbe_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	movq %rsi, %rdi
	movq %rdx, %rsi
	movq %rsi, %r12
	leaq str355(%rip), %rsi
	callq donna_string_equal
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb90
	callq builder_pipeline_run_qbe_all_checked
	jmp .Lbb91
.Lbb90:
	callq builder_pipeline_run_qbe_all_checked_target
.Lbb91:
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_run_qbe_for_mode, @function
.size cli_cmd_build_run_qbe_for_mode, .-cli_cmd_build_run_qbe_for_mode
/* end function cli_cmd_build_run_qbe_for_mode */

.text
.balign 16
cli_cmd_build_c_compiler_available_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq str365(%rip), %rsi
	callq donna_string_equal
	cmpq $1, %rax
	jz .Lbb94
	callq builder_pipeline_c_compiler_available
	jmp .Lbb95
.Lbb94:
	callq builder_pipeline_release_c_compiler_available
.Lbb95:
	leave
	ret
.type cli_cmd_build_c_compiler_available_for_mode, @function
.size cli_cmd_build_c_compiler_available_for_mode, .-cli_cmd_build_c_compiler_available_for_mode
/* end function cli_cmd_build_c_compiler_available_for_mode */

.text
.balign 16
cli_cmd_build_c_command_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	leaq str375(%rip), %rsi
	callq donna_string_equal
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb98
	callq builder_pipeline_c_command
	jmp .Lbb99
.Lbb98:
	callq builder_pipeline_release_c_command
.Lbb99:
	popq %rbx
	leave
	ret
.type cli_cmd_build_c_command_for_mode, @function
.size cli_cmd_build_c_command_for_mode, .-cli_cmd_build_c_command_for_mode
/* end function cli_cmd_build_c_command_for_mode */

.text
.balign 16
cli_cmd_build_qbe_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str385(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, %rbx
	leaq str387(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str389(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type cli_cmd_build_qbe_missing_error, @function
.size cli_cmd_build_qbe_missing_error, .-cli_cmd_build_qbe_missing_error
/* end function cli_cmd_build_qbe_missing_error */

.text
.balign 16
cli_cmd_build_c_compiler_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str392(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, %rbx
	leaq str394(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str396(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type cli_cmd_build_c_compiler_missing_error, @function
.size cli_cmd_build_c_compiler_missing_error, .-cli_cmd_build_c_compiler_missing_error
/* end function cli_cmd_build_c_compiler_missing_error */

.text
.balign 16
cli_cmd_build_linker_failed_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r12
	callq donna_files_read
	movq %rax, %rdi
	callq donna_string_trim
	movq %rax, %rbx
	leaq str401(%rip), %rdi
	callq utilities_colors_error_header
	movq %rax, %rdi
	movq %rdi, %r13
	leaq str403(%rip), %rdi
	callq utilities_colors_bold
	movq %r13, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	leaq str406(%rip), %rdi
	callq utilities_colors_dim
	movq %r13, %rdi
	movq %rax, %r13
	callq utilities_colors_path
	movq %r13, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %r14
	movq %rdi, %rbx
	callq donna_string_is_empty
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb106
	movq %rdi, %rbx
	leaq str418(%rip), %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rbx
	callq cli_cmd_build_indent
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %r15
	jmp .Lbb107
.Lbb106:
	leaq str416(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, %r15
.Lbb107:
	leaq str423(%rip), %rdi
	callq utilities_colors_orange
	movq %rax, %rdi
	leaq str425(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %r13
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %r13, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %r13
	movq $1, (%r13)
	movq %r15, 8(%r13)
	movq %rbx, 16(%r13)
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %r14, 8(%rbx)
	movq %r13, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	leaq str439(%rip), %rsi
	callq donna_string_join
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_linker_failed_error, @function
.size cli_cmd_build_linker_failed_error, .-cli_cmd_build_linker_failed_error
/* end function cli_cmd_build_linker_failed_error */

.text
.balign 16
cli_cmd_build_indent:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq str441(%rip), %rsi
	callq donna_string_split
	movq %rax, %rdi
	leaq str443(%rip), %rsi
	callq cli_cmd_build_indent_lines
	leave
	ret
.type cli_cmd_build_indent, @function
.size cli_cmd_build_indent, .-cli_cmd_build_indent
/* end function cli_cmd_build_indent */

.text
.balign 16
cli_cmd_build_indent_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz .Lbb113
	movq 8(%rdi), %rsi
	movq 16(%rdi), %rdi
	movq %rsi, %r12
	leaq str455(%rip), %rsi
	movq %rdi, %rbx
	movq %rax, %rdi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str458(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	callq cli_cmd_build_indent_lines
.Lbb113:
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_indent_lines, @function
.size cli_cmd_build_indent_lines, .-cli_cmd_build_indent_lines
/* end function cli_cmd_build_indent_lines */

.text
.balign 16
cli_cmd_build_compile_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $120, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq 16(%rbp), %rax
	movq %rax, -48(%rbp)
	movq %r9, -32(%rbp)
	movq %r8, %r12
	movq %rcx, %r13
	movq %rdx, %r14
	movq %rsi, %rbx
	movq %rdi, %rax
	movq %r12, -24(%rbp)
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb126
	movq 8(%rax), %r12
	movq 16(%rax), %rdi
	movq %rdi, -80(%rbp)
	leaq str479(%rip), %rsi
	movq %rbx, %rdi
	callq donna_files_join
	movq %rax, %rdi
	movq %rdi, %r15
	movq %r12, %rdi
	callq builder_dependencies_dep_name
	movq %r15, %rdi
	movq %rax, %rsi
	callq donna_files_join
	movq %rax, %rdi
	movq %rdi, -8(%rbp)
	leaq str483(%rip), %rsi
	callq donna_files_join
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rsi, %r15
	leaq str485(%rip), %rsi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq donna_files_join
	movq %rax, %rdi
	callq donna_files_mkdir
	movq %r12, %rdi
	movq %rdi, %r12
	movq -8(%rbp), %rdi
	callq donna_files_mkdir
	movq %r12, %rdi
	movq %rdi, %r12
	movq %r15, %rdi
	callq donna_files_mkdir
	movq %r12, %rdi
	movq %rdi, %r12
	callq builder_dependencies_dep_src_dir
	movq %r12, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %r12
	callq builder_dependencies_dep_name
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	movq -16(%rbp), %rdi
	movl $0, %r8d
	movq %r14, %rcx
	movq %r15, %rdx
	callq builder_pipeline_compile_dir
	movq %r15, %rsi
	movq %r12, %rdi
	movq -24(%rbp), %r12
	subq $16, %rsp
	movq %rsp, %r15
	movq %r15, -64(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb124
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq %rcx, -40(%rbp)
	movq %rsi, %r15
	movq 8(%rax), %rsi
	movq %rsi, -56(%rbp)
	movq 16(%rax), %rcx
	movq %rcx, -104(%rbp)
	callq builder_dependencies_dep_path
	movq %r15, %rsi
	movq %rax, %rdi
	movq -48(%rbp), %rax
	movq -32(%rbp), %r15
	movq %rax, %rcx
	movq %r15, %rdx
	callq cli_cmd_build_compile_ffi_for_mode
	movq %rbx, %rsi
	movq %rax, -72(%rbp)
	movq %r14, %rax
	movq %rsi, %r14
	movq -40(%rbp), %rsi
	movq %r13, %rbx
	movq -48(%rbp), %r13
	movq %rax, %rdi
	callq donna_list_append
	movq %r14, %rsi
	movq %rax, -96(%rbp)
	movq %rbx, %rax
	movq -64(%rbp), %rbx
	movq %rsi, %r14
	movq -56(%rbp), %rsi
	movq %rax, %rdi
	callq donna_list_append
	movq %r14, %rsi
	movq %rax, -88(%rbp)
	movq %r12, %rax
	movq %rsi, %r14
	movq -72(%rbp), %rsi
	movq -80(%rbp), %rdi
	movq %rdi, %r12
	movq %rax, %rdi
	callq donna_list_append
	movq %r15, %r9
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %r8
	movq -88(%rbp), %rcx
	movq -96(%rbp), %rdx
	movq -104(%rbp), %r12
	subq $16, %rsp
	movq %rsp, %rax
	movq %r13, 0(%rax)
	callq cli_cmd_build_compile_deps
	movq %r12, %rcx
	subq $-16, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb122
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r15
	movq 16(%rax), %rdx
	movq %rdx, -112(%rbp)
	movq 24(%rax), %r14
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb119
	movq %r14, (%rax)
	jmp .Lbb121
.Lbb119:
	movq $1, (%rax)
	movl $1, %r14d
.Lbb121:
	movl $32, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq -112(%rbp), %rax
	movq %rcx, (%r13)
	movq %r15, 8(%r13)
	movq %rax, 16(%r13)
	movq %r14, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb123
.Lbb122:
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb123:
	movq %rax, (%rbx)
	jmp .Lbb127
.Lbb124:
	movq %r15, %rbx
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb127
.Lbb126:
	movl $32, %edi
	callq malloc
	movq %rax, %rbx
	movq %r14, (%rbx)
	movq %r13, 8(%rbx)
	movq %r12, 16(%rbx)
	movq $0, 24(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
.Lbb127:
	movq %rbp, %rsp
	subq $160, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_compile_deps, @function
.size cli_cmd_build_compile_deps, .-cli_cmd_build_compile_deps
/* end function cli_cmd_build_compile_deps */

.text
.balign 16
cli_cmd_build_has_public_main:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb133
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq cli_cmd_build_iface_has_main
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb131
	callq cli_cmd_build_has_public_main
	movq %rax, (%rbx)
	jmp .Lbb134
.Lbb131:
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb134
.Lbb133:
	movl $0, %eax
.Lbb134:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type cli_cmd_build_has_public_main, @function
.size cli_cmd_build_has_public_main, .-cli_cmd_build_has_public_main
/* end function cli_cmd_build_has_public_main */

.text
.balign 16
cli_cmd_build_iface_has_main:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 8(%rdi), %rdi
	callq cli_cmd_build_bindings_have_main
	leave
	ret
.type cli_cmd_build_iface_has_main, @function
.size cli_cmd_build_iface_has_main, .-cli_cmd_build_iface_has_main
/* end function cli_cmd_build_iface_has_main */

.text
.balign 16
cli_cmd_build_bindings_have_main:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb142
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	leaq str598(%rip), %rsi
	callq donna_string_equal
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb140
	callq cli_cmd_build_bindings_have_main
	movq %rax, (%rbx)
	jmp .Lbb143
.Lbb140:
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb143
.Lbb142:
	movl $0, %eax
.Lbb143:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type cli_cmd_build_bindings_have_main, @function
.size cli_cmd_build_bindings_have_main, .-cli_cmd_build_bindings_have_main
/* end function cli_cmd_build_bindings_have_main */

.text
.balign 16
cli_cmd_build_linker_flags:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq str608(%rip), %rdi
	callq donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb146
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	leaq str620(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb147
.Lbb146:
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	leaq str616(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
.Lbb147:
	leave
	ret
.type cli_cmd_build_linker_flags, @function
.size cli_cmd_build_linker_flags, .-cli_cmd_build_linker_flags
/* end function cli_cmd_build_linker_flags */

.text
.balign 16
cli_cmd_build_linker_flags_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	leaq str625(%rip), %rsi
	callq donna_string_equal
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb150
	callq cli_cmd_build_release_linker_flags
	jmp .Lbb151
.Lbb150:
	callq cli_cmd_build_linker_flags
.Lbb151:
	popq %rbx
	leave
	ret
.type cli_cmd_build_linker_flags_for_mode, @function
.size cli_cmd_build_linker_flags_for_mode, .-cli_cmd_build_linker_flags_for_mode
/* end function cli_cmd_build_linker_flags_for_mode */

.text
.balign 16
cli_cmd_build_release_linker_flags:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str637(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb158
	leaq str646(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb157
	leaq str655(%rip), %rsi
	callq strcmp
	cmpq $0, %rax
	jz .Lbb156
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	leaq str660(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb159
.Lbb156:
	leaq donna_nil(%rip), %rax
	jmp .Lbb159
.Lbb157:
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	leaq str651(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb159
.Lbb158:
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	leaq str642(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
.Lbb159:
	popq %rbx
	leave
	ret
.type cli_cmd_build_release_linker_flags, @function
.size cli_cmd_build_release_linker_flags, .-cli_cmd_build_release_linker_flags
/* end function cli_cmd_build_release_linker_flags */

.text
.balign 16
cli_cmd_build_cc_flags_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	leaq str665(%rip), %rsi
	callq donna_string_equal
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb162
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str672(%rip), %rax
	movq %rax, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	callq builder_pipeline_release_cc_target_flags
	movq %rbx, %rdi
	movq %rax, %rsi
	callq donna_list_append
	jmp .Lbb163
.Lbb162:
	leaq donna_nil(%rip), %rax
.Lbb163:
	popq %rbx
	leave
	ret
.type cli_cmd_build_cc_flags_for_mode, @function
.size cli_cmd_build_cc_flags_for_mode, .-cli_cmd_build_cc_flags_for_mode
/* end function cli_cmd_build_cc_flags_for_mode */

.text
.balign 16
cli_cmd_build_output_name_for_target:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rsi, %rdi
	leaq str679(%rip), %rsi
	callq donna_string_equal
	movq %rax, %rcx
	movq %rbx, %rax
	cmpq $1, %rcx
	jnz .Lbb166
	leaq str686(%rip), %rsi
	movq %rax, %rdi
	callq __rt_str_concat
.Lbb166:
	popq %rbx
	leave
	ret
.type cli_cmd_build_output_name_for_target, @function
.size cli_cmd_build_output_name_for_target, .-cli_cmd_build_output_name_for_target
/* end function cli_cmd_build_output_name_for_target */

.text
.balign 16
cli_cmd_build_maybe_codesign:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str689(%rip), %rdi
	callq donna_shell_run
	movq %rbx, %rsi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $0, %rax
	jz .Lbb169
	leaq str697(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str699(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_shell_run
	jmp .Lbb170
.Lbb169:
	movl $0, %eax
.Lbb170:
	popq %rbx
	leave
	ret
.type cli_cmd_build_maybe_codesign, @function
.size cli_cmd_build_maybe_codesign, .-cli_cmd_build_maybe_codesign
/* end function cli_cmd_build_maybe_codesign */

.text
.balign 16
cli_cmd_build_sh_quote:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq str705(%rip), %rdx
	leaq str704(%rip), %rsi
	callq donna_string_replace
	movq %rax, %rsi
	leaq str703(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str708(%rip), %rsi
	callq __rt_str_concat
	leave
	ret
.type cli_cmd_build_sh_quote, @function
.size cli_cmd_build_sh_quote, .-cli_cmd_build_sh_quote
/* end function cli_cmd_build_sh_quote */

.text
.balign 16
cli_cmd_build_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb181
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb177
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb178
.Lbb177:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str729(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb178:
	cmpl $0, %eax
	jnz .Lbb180
	movq 16(%rdi), %rdi
	callq cli_cmd_build_first_positional
	jmp .Lbb182
.Lbb180:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp .Lbb182
.Lbb181:
	leaq str716(%rip), %rax
.Lbb182:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_first_positional, @function
.size cli_cmd_build_first_positional, .-cli_cmd_build_first_positional
/* end function cli_cmd_build_first_positional */

.text
.balign 16
cli_cmd_build_build_dir_arg:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	callq cli_cmd_build_first_positional
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq str752(%rip), %rsi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq donna_string_equal
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	cmpq $0, %rcx
	jz .Lbb190
	leaq str759(%rip), %rsi
	callq cli_cmd_build_flag_value
	movq %rax, %r12
	leaq str761(%rip), %rsi
	movq %r12, %rdi
	callq donna_string_equal
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb189
	movq %r12, %rdi
	callq donna_string_is_empty
	movq %rax, %rdx
	movq %r12, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb187
	movq %rax, (%rcx)
	jmp .Lbb188
.Lbb187:
	leaq str775(%rip), %rax
	movq %rax, (%rcx)
	leaq str775(%rip), %rax
.Lbb188:
	movq %rax, (%rbx)
	jmp .Lbb190
.Lbb189:
	leaq str768(%rip), %rax
	movq %rax, (%rbx)
	leaq str768(%rip), %rax
.Lbb190:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_build_dir_arg, @function
.size cli_cmd_build_build_dir_arg, .-cli_cmd_build_build_dir_arg
/* end function cli_cmd_build_build_dir_arg */

.text
.balign 16
cli_cmd_build_build_config:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	leaq str779(%rip), %rsi
	movq %rdi, %rbx
	callq cli_cmd_build_has_flag
	movq %rbx, %rdi
	cmpq $0, %rax
	jz .Lbb198
	leaq str788(%rip), %rsi
	callq cli_cmd_build_flag_value
	movq %rax, %rdi
	leaq str790(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_equal
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb197
	callq cli_cmd_build_normalize_release_target
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb195
	movq 8(%rax), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r14
	movq $1, (%r14)
	movq %r13, 8(%r14)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r14)
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq $1, (%r13)
	movq %r14, 8(%r13)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb196
.Lbb195:
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb196:
	movq %rax, (%rbx)
	jmp .Lbb199
.Lbb197:
	callq cli_cmd_build_all_release_targets
	movq %rax, %r13
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb199
.Lbb198:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq cli_cmd_build_BuildDebug(%rip), %rcx
	movq %rcx, 8(%rax)
.Lbb199:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_build_config, @function
.size cli_cmd_build_build_config, .-cli_cmd_build_build_config
/* end function cli_cmd_build_build_config */

.text
.balign 16
cli_cmd_build_has_flag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb205
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	movq %rsi, %r12
	callq donna_string_equal
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb203
	callq cli_cmd_build_has_flag
	movq %rax, (%rbx)
	jmp .Lbb206
.Lbb203:
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb206
.Lbb205:
	movl $0, %eax
.Lbb206:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_has_flag, @function
.size cli_cmd_build_has_flag, .-cli_cmd_build_has_flag
/* end function cli_cmd_build_has_flag */

.text
.balign 16
cli_cmd_build_flag_value:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb211
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
	jz .Lbb210
	callq cli_cmd_build_flag_value
	movq %rax, (%rbx)
	jmp .Lbb212
.Lbb210:
	movq %rax, (%rbx)
	jmp .Lbb212
.Lbb211:
	leaq str854(%rip), %rax
.Lbb212:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_flag_value, @function
.size cli_cmd_build_flag_value, .-cli_cmd_build_flag_value
/* end function cli_cmd_build_flag_value */

.text
.balign 16
.globl cli_cmd_build_normalize_release_target
cli_cmd_build_normalize_release_target:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %r12
	callq donna_string_is_empty
	cmpq $1, %rax
	jz .Lbb215
	movq %r12, %rdi
	jmp .Lbb216
.Lbb215:
	callq cli_cmd_build_host_release_target
	movq %rax, %rdi
.Lbb216:
	subq $16, %rsp
	movq %rsp, %rbx
	leaq str882(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb238
	leaq str890(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb237
	leaq str898(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb236
	leaq str906(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb235
	leaq str914(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb234
	leaq str922(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb233
	leaq str930(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb232
	leaq str938(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb231
	leaq str946(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb230
	leaq str954(%rip), %rsi
	movq %rdi, %r13
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb229
	leaq str962(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb228
	movq %rdi, %r12
	leaq str970(%rip), %rdi
	callq utilities_colors_red
	movq %rax, %rdi
	leaq str972(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq utilities_colors_path
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb239
.Lbb228:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq str967(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb239
.Lbb229:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq str959(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb239
.Lbb230:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq str951(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb239
.Lbb231:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq str943(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb239
.Lbb232:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq str935(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb239
.Lbb233:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq str927(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb239
.Lbb234:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq str919(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb239
.Lbb235:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq str911(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb239
.Lbb236:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq str903(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb239
.Lbb237:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq str895(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb239
.Lbb238:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq str887(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
.Lbb239:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_normalize_release_target, @function
.size cli_cmd_build_normalize_release_target, .-cli_cmd_build_normalize_release_target
/* end function cli_cmd_build_normalize_release_target */

.text
.balign 16
.globl cli_cmd_build_all_release_targets
cli_cmd_build_all_release_targets:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	leaq str979(%rip), %rax
	movq %rax, 8(%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str983(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	leaq str987(%rip), %rax
	movq %rax, 8(%r12)
	movq %rbx, 16(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	leaq str991(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	leaq str995(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rbx, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_all_release_targets, @function
.size cli_cmd_build_all_release_targets, .-cli_cmd_build_all_release_targets
/* end function cli_cmd_build_all_release_targets */

.text
.balign 16
cli_cmd_build_host_release_target:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq str999(%rip), %rdi
	callq donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb246
	leaq str1018(%rip), %rdi
	callq donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz .Lbb245
	leaq str1027(%rip), %rax
	movq %rax, (%rcx)
	leaq str1027(%rip), %rax
	jmp .Lbb249
.Lbb245:
	leaq str1026(%rip), %rax
	movq %rax, (%rcx)
	leaq str1026(%rip), %rax
	jmp .Lbb249
.Lbb246:
	leaq str1007(%rip), %rdi
	callq donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz .Lbb248
	leaq str1016(%rip), %rax
	movq %rax, (%rcx)
	leaq str1016(%rip), %rax
	jmp .Lbb249
.Lbb248:
	leaq str1015(%rip), %rax
	movq %rax, (%rcx)
	leaq str1015(%rip), %rax
.Lbb249:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type cli_cmd_build_host_release_target, @function
.size cli_cmd_build_host_release_target, .-cli_cmd_build_host_release_target
/* end function cli_cmd_build_host_release_target */

.text
.balign 16
.globl cli_cmd_build_release_target_dir
cli_cmd_build_release_target_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str1032(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	leaq str1037(%rip), %rax
	cmovnz %rdi, %rax
	popq %rbx
	leave
	ret
.type cli_cmd_build_release_target_dir, @function
.size cli_cmd_build_release_target_dir, .-cli_cmd_build_release_target_dir
/* end function cli_cmd_build_release_target_dir */

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
