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
/* end function cli_cmd_build_BuildOk */

.text
.balign 16
.globl cli_cmd_build_BuildFailed
cli_cmd_build_BuildFailed:
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
/* end function cli_cmd_build_BuildFailed */

.text
.balign 16
.globl cli_cmd_build_BuildRelease
cli_cmd_build_BuildRelease:
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
/* end function cli_cmd_build_BuildRelease */

.text
.balign 16
.globl cli_cmd_build_run
cli_cmd_build_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq cli_cmd_build_build_dir_arg
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_build_build_config
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb13
	movq 8(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_scanner_scan
	movq %rdi, %r8
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb12
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq cli_cmd_build_build_project_with_config
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb10
	leaq str45(%rip), %rax
	movq %rax, (%rcx)
	leaq str45(%rip), %rax
	jmp Lbb11
Lbb10:
	movq 8(%rax), %rax
	movq %rax, (%rcx)
Lbb11:
	movq %rax, (%rsi)
	jmp Lbb14
Lbb12:
	movq 8(%rax), %rdi
	subq $32, %rsp
	leaq str27(%rip), %rcx
	callq utilities_colors_red
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str29(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb14
Lbb13:
	movq 8(%rax), %rax
Lbb14:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_run */

.text
.balign 16
.globl cli_cmd_build_build_project
cli_cmd_build_build_project:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq cli_cmd_build_BuildDebug(%rip), %r8
	callq cli_cmd_build_build_project_with_config
	subq $-32, %rsp
	leave
	ret
/* end function cli_cmd_build_build_project */

.text
.balign 16
.globl cli_cmd_build_build_project_with_config
cli_cmd_build_build_project_with_config:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%r8), %rax
	cmpq $0, %rax
	jz Lbb19
	movq 8(%r8), %r8
	subq $32, %rsp
	callq cli_cmd_build_build_release_targets
	subq $-32, %rsp
	jmp Lbb20
Lbb19:
	subq $32, %rsp
	leaq str57(%rip), %r9
	leaq str56(%rip), %r8
	callq cli_cmd_build_build_project_target
	subq $-32, %rsp
Lbb20:
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	movq (%rax), %rsi
	cmpq $0, %rsi
	jz Lbb31
	movq 8(%rax), %r8
	movq 16(%rax), %rbx
	subq $32, %rsp
	leaq str75(%rip), %r9
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq cli_cmd_build_build_project_target
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdi
	cmpq $1, %rdi
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb30
	movq 8(%rax), %r13
	subq $32, %rsp
	callq cli_cmd_build_build_release_targets
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb28
	movq 8(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %r13
	jz Lbb26
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb27
Lbb26:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rbx)
Lbb27:
	movq %rax, (%rdi)
	jmp Lbb29
Lbb28:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb29:
	movq %rax, (%rsi)
	jmp Lbb32
Lbb30:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb32
Lbb31:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $0, 8(%rax)
Lbb32:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_build_release_targets */

.text
.balign 16
cli_cmd_build_build_project_target:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $168, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %r9, %r13
	movq %r8, %rdi
	movq %rdx, %rbx
	movq %rcx, %rsi
	subq $32, %rsp
	callq donna_time_now_us
	movq %rsi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq builder_scanner_project_build_dir
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, -8(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r8
	movq %rdx, %rdi
	movq %r13, %rdx
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq cli_cmd_build_target_root_dir
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, -16(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r8
	movq %rdx, %rdi
	movq %r13, %rdx
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq cli_cmd_build_bin_dir_for_mode
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r8
	movq %rdx, %r14
	movq %r13, %rdx
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq cli_cmd_build_artifacts_dir_for_mode
	movq %r14, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r15
	movq %rdx, %r8
	movq %rdx, %r14
	movq %r13, %rdx
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq cli_cmd_build_deps_build_dir_for_mode
	movq %rdi, %rcx
	movq %rax, -24(%rbp)
	movq %rcx, %rdi
	movq -8(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %r14, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	movq %r13, %rdx
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq cli_cmd_build_mkdir_release_parents
	movq %rdi, %rcx
	movq %rcx, %rdi
	movq -16(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq donna_files_mkdir
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r15, %rcx
	callq donna_files_mkdir
	movq %r14, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	leaq str126(%rip), %rdx
	movq %rcx, %rdi
	callq donna_files_join
	movq %r14, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	movq %rdi, %rdx
	callq builder_dependencies_resolve_deps_checked
	movq %r15, %r8
	movq %r14, %rdx
	movq %rdi, %rcx
	movq %rdx, %rdi
	movq -24(%rbp), %rdx
	subq $-32, %rsp
	movq (%rax), %r9
	cmpq $1, %r9
	setz %r9b
	movzbq %r9b, %r9
	cmpl $0, %r9d
	jnz Lbb60
	movq 8(%rax), %rax
	movq %rax, -32(%rbp)
	subq $32, %rsp
	movq %rdi, %r9
	movq %r8, %r15
	movq %r13, %r8
	movq %rdx, %r14
	movq %r15, %rdx
	callq cli_cmd_build_compile_ffi_for_mode
	movq %r15, %r8
	movq %r14, %rdx
	movq %rsi, %rcx
	movq %rcx, %rsi
	movq -32(%rbp), %rcx
	subq $-32, %rsp
	subq $64, %rsp
	movq %rsp, %r9
	movq %rdi, 48(%r9)
	movq %r13, 40(%r9)
	movq %rax, 32(%r9)
	leaq donna_nil(%rip), %r9
	movq %r8, %r15
	leaq donna_nil(%rip), %r8
	callq cli_cmd_build_compile_deps
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-64, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdi
	cmpq $1, %rdi
	movq %rdx, %r14
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb59
	movq 8(%rax), %rax
	movq (%rax), %r9
	movq %r9, -48(%rbp)
	movq 8(%rax), %rdi
	movq %rdi, -64(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -96(%rbp)
	movq 24(%rax), %rax
	movq %rax, -40(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq builder_scanner_project_src_dir
	movq %r15, %r8
	movq %r14, %rdx
	movq %rax, %rcx
	movq -40(%rbp), %rax
	movq -48(%rbp), %r9
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %r10
	movq %rax, 32(%r10)
	movq %rdx, %r14
	leaq str164(%rip), %rdx
	callq builder_pipeline_compile_dir
	movq %r14, %rdx
	movq %rdi, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb57
	movq 8(%rax), %rax
	movq %rcx, %r14
	movq (%rax), %rcx
	movq %rdx, %r15
	movq 8(%rax), %rdx
	movq %rdx, -56(%rbp)
	subq $32, %rsp
	callq cli_cmd_build_has_public_main
	movq %r15, %rdx
	movq %r14, %rcx
	movq %rax, %r8
	movq %rdx, %r15
	movq -56(%rbp), %rdx
	movq %rcx, %r14
	movq -64(%rbp), %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -80(%rbp)
	cmpq $0, %r8
	jz Lbb54
	subq $32, %rsp
	callq donna_list_append
	movq %rax, -72(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_qbe_available
	movq %r14, %rcx
	movq %rax, %rdx
	movq -80(%rbp), %r14
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -136(%rbp)
	cmpq $0, %rdx
	jz Lbb51
	subq $32, %rsp
	movq %rcx, %r14
	movq %r13, %rcx
	callq cli_cmd_build_c_compiler_available_for_mode
	movq %r15, %rdx
	movq %r14, %rcx
	movq %rax, %r9
	movq -136(%rbp), %rax
	movq -80(%rbp), %r14
	movq %rcx, %r15
	movq -72(%rbp), %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r8
	movq %r8, -128(%rbp)
	cmpq $0, %r9
	jz Lbb48
	subq $32, %rsp
	movq %rdx, %r8
	movq %rdx, %r14
	movq %r13, %rdx
	callq cli_cmd_build_run_qbe_for_mode
	movq %r14, %rdx
	movq %rbx, %rcx
	movq -128(%rbp), %r8
	movq %rdx, %r14
	movq -136(%rbp), %rdx
	movq -80(%rbp), %rbx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r9
	movq %r9, -144(%rbp)
	movq (%rax), %r10
	cmpq $1, %r10
	setz %r10b
	movzbq %r10b, %r10
	cmpl $0, %r10d
	jnz Lbb45
	movq 8(%rax), %rax
	movq %rax, -112(%rbp)
	subq $32, %rsp
	callq builder_scanner_project_name
	movq %r14, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	callq cli_cmd_build_output_name_for_target
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	movq %r14, %rdx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r15
	movq %r13, %rcx
	callq cli_cmd_build_cc_flags_for_mode
	movq %r15, %rdx
	movq %rax, -104(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %r13, %rcx
	callq cli_cmd_build_linker_flags_for_mode
	movq %rax, -88(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, %r15
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r15)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	movq %r15, %rax
	movq -88(%rbp), %rcx
	movq -96(%rbp), %r15
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str238(%rip), %r8
	movq %r8, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq donna_list_append
	movq %r15, %rcx
	movq %rax, %rdx
	movq %rcx, %r15
	movq -104(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %r15, %rcx
	movq %rax, %rdx
	movq -112(%rbp), %r15
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r15
	leaq str246(%rip), %rdx
	movq %rcx, %r13
	movq %r14, %rcx
	callq __rt_str_concat
	movq %r15, %rdx
	movq %r13, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_build_c_command_for_mode
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r15
	leaq str249(%rip), %rdx
	movq %rcx, %r13
	movq %r15, %rcx
	callq __rt_str_concat
	movq %r13, %rcx
	movq %rax, -120(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	callq cli_cmd_build_sh_quote
	movq %r13, %rcx
	movq %rax, %rdx
	movq %rcx, %r13
	movq -120(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %r15, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r15
	leaq str253(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	movq %r15, %rdx
	movq %r13, %rcx
	movq %rax, %r8
	movq -144(%rbp), %rax
	movq -128(%rbp), %r13
	movq %r12, %r15
	movq -136(%rbp), %r12
	subq $-32, %rsp
	cmpq $0, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	movq %r8, -152(%rbp)
	cmpq $0, %r9
	jz Lbb42
	subq $32, %rsp
	callq donna_files_delete
	movq %r14, %rcx
	movq -144(%rbp), %r14
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_build_maybe_codesign
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_time_now_us
	movq %rax, %rcx
	movq %r15, %rax
	movq -152(%rbp), %r15
	subq $-32, %rsp
	movq %rcx, %rdx
	subq %rax, %rdx
	subq $32, %rsp
	leaq str267(%rip), %rcx
	callq utilities_logger_ok
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r15)
	jmp Lbb44
Lbb42:
	movq %r8, %r15
	movq %rax, %r14
	subq $32, %rsp
	callq cli_cmd_build_linker_failed_error
	movq %rax, -160(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq -160(%rbp), %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rax, (%r15)
Lbb44:
	movq %rax, (%r14)
	jmp Lbb47
Lbb45:
	movq %r9, %r14
	movq %r8, %r13
	movq %rdx, %r12
	movq 8(%rax), %r15
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
Lbb47:
	movq %rax, (%r13)
	jmp Lbb50
Lbb48:
	movq %r8, %r13
	movq %rax, %r12
	movq %r14, %rbx
	subq $32, %rsp
	callq cli_cmd_build_c_compiler_missing_error
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
Lbb50:
	movq %rax, (%r12)
	jmp Lbb53
Lbb51:
	movq %rax, %r12
	movq %r14, %rbx
	subq $32, %rsp
	callq cli_cmd_build_qbe_missing_error
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
Lbb53:
	movq %rax, (%rbx)
	jmp Lbb56
Lbb54:
	movq %r14, %r13
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $32, %rsp
	callq builder_scanner_project_name
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_delete
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_time_now_us
	subq $-32, %rsp
	movq %rax, %rdx
	subq %r12, %rdx
	subq $32, %rsp
	leaq str193(%rip), %rcx
	callq utilities_logger_ok
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $0, 8(%rax)
	movq %rax, (%rbx)
Lbb56:
	movq %rax, (%rdi)
	jmp Lbb58
Lbb57:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb58:
	movq %rax, (%rsi)
	jmp Lbb61
Lbb59:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb61
Lbb60:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb61:
	movq %rbp, %rsp
	subq $224, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_build_project_target */

.text
.balign 16
cli_cmd_build_target_root_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rcx, %rdi
	movq %rdx, %rcx
	subq $32, %rsp
	leaq str280(%rip), %rdx
	callq donna_string_equal
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb64
	subq $32, %rsp
	callq builder_scanner_project_build_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str289(%rip), %rdx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str291(%rip), %rdx
	callq donna_files_join
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_build_release_target_dir
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	subq $-32, %rsp
	jmp Lbb65
Lbb64:
	subq $32, %rsp
	callq builder_scanner_project_dev_dir
	subq $-32, %rsp
Lbb65:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_target_root_dir */

.text
.balign 16
cli_cmd_build_bin_dir_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str296(%rip), %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_string_equal
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb68
	subq $32, %rsp
	callq cli_cmd_build_target_root_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str305(%rip), %rdx
	callq donna_files_join
	subq $-32, %rsp
	jmp Lbb69
Lbb68:
	subq $32, %rsp
	callq builder_scanner_project_bin_dir
	subq $-32, %rsp
Lbb69:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_bin_dir_for_mode */

.text
.balign 16
cli_cmd_build_artifacts_dir_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str308(%rip), %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_string_equal
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb72
	subq $32, %rsp
	callq cli_cmd_build_target_root_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str317(%rip), %rdx
	callq donna_files_join
	subq $-32, %rsp
	jmp Lbb73
Lbb72:
	subq $32, %rsp
	callq builder_scanner_project_dev_artifacts_dir
	subq $-32, %rsp
Lbb73:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_artifacts_dir_for_mode */

.text
.balign 16
cli_cmd_build_deps_build_dir_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str320(%rip), %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_string_equal
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb76
	subq $32, %rsp
	callq cli_cmd_build_target_root_dir
	subq $-32, %rsp
	jmp Lbb77
Lbb76:
	subq $32, %rsp
	callq builder_scanner_project_build_dir
	subq $-32, %rsp
Lbb77:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_deps_build_dir_for_mode */

.text
.balign 16
cli_cmd_build_mkdir_release_parents:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	leaq str330(%rip), %rdx
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb80
	subq $32, %rsp
	callq builder_scanner_project_build_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str338(%rip), %rdx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str340(%rip), %rdx
	movq %rcx, %rsi
	callq donna_files_join
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	subq $-32, %rsp
	jmp Lbb81
Lbb80:
	movl $0, %eax
Lbb81:
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_mkdir_release_parents */

.text
.balign 16
cli_cmd_build_compile_ffi_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r9, %rbx
	movq %rcx, %rsi
	movq %r8, %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str345(%rip), %rdx
	callq donna_string_equal
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb84
	subq $32, %rsp
	callq builder_pipeline_compile_ffi
	subq $-32, %rsp
	jmp Lbb85
Lbb84:
	subq $32, %rsp
	callq builder_pipeline_compile_ffi_target
	subq $-32, %rsp
Lbb85:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_compile_ffi_for_mode */

.text
.balign 16
cli_cmd_build_run_qbe_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	movq %rdx, %rcx
	movq %r8, %rdx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str355(%rip), %rdx
	callq donna_string_equal
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb88
	subq $32, %rsp
	callq builder_pipeline_run_qbe_all_checked
	subq $-32, %rsp
	jmp Lbb89
Lbb88:
	subq $32, %rsp
	callq builder_pipeline_run_qbe_all_checked_target
	subq $-32, %rsp
Lbb89:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_run_qbe_for_mode */

.text
.balign 16
cli_cmd_build_c_compiler_available_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str365(%rip), %rdx
	callq donna_string_equal
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb92
	subq $32, %rsp
	callq builder_pipeline_c_compiler_available
	subq $-32, %rsp
	jmp Lbb93
Lbb92:
	subq $32, %rsp
	callq builder_pipeline_release_c_compiler_available
	subq $-32, %rsp
Lbb93:
	leave
	ret
/* end function cli_cmd_build_c_compiler_available_for_mode */

.text
.balign 16
cli_cmd_build_c_command_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rsi
	subq $32, %rsp
	leaq str375(%rip), %rdx
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb96
	subq $32, %rsp
	callq builder_pipeline_c_command
	subq $-32, %rsp
	jmp Lbb97
Lbb96:
	subq $32, %rsp
	callq builder_pipeline_release_c_command
	subq $-32, %rsp
Lbb97:
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_c_command_for_mode */

.text
.balign 16
cli_cmd_build_qbe_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str385(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str387(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str389(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_qbe_missing_error */

.text
.balign 16
cli_cmd_build_c_compiler_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str392(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str394(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str396(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rsi
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	subq $32, %rsp
	callq donna_files_read
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str401(%rip), %rcx
	callq utilities_colors_error_header
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str403(%rip), %rcx
	callq utilities_colors_bold
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str406(%rip), %rcx
	callq utilities_colors_dim
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_path
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb104
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str418(%rip), %rcx
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_build_indent
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %r13
	subq $-32, %rsp
	jmp Lbb105
Lbb104:
	subq $32, %rsp
	leaq str416(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %r13
	subq $-32, %rsp
Lbb105:
	subq $32, %rsp
	leaq str423(%rip), %rcx
	callq utilities_colors_orange
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str425(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %rbx, 8(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r13, 8(%rbx)
	movq %rsi, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rdi, 8(%rcx)
	movq %rsi, 16(%rcx)
	subq $32, %rsp
	leaq str439(%rip), %rdx
	callq donna_string_join
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_linker_failed_error */

.text
.balign 16
cli_cmd_build_indent:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str441(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str443(%rip), %rdx
	callq cli_cmd_build_indent_lines
	subq $-32, %rsp
	leave
	ret
/* end function cli_cmd_build_indent */

.text
.balign 16
cli_cmd_build_indent_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb111
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str455(%rip), %rdx
	movq %rcx, %rsi
	movq %rax, %rcx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str458(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_build_indent_lines
	subq $-32, %rsp
Lbb111:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_indent_lines */

.text
.balign 16
cli_cmd_build_compile_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $104, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq 64(%rbp), %r13
	movq %r13, -32(%rbp)
	movq 56(%rbp), %r12
	movq 48(%rbp), %rdi
	movq %r9, %rbx
	movq %r8, %r14
	movq %rdx, %r15
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb123
	movq 8(%rax), %rsi
	movq 16(%rax), %rcx
	movq %rcx, -56(%rbp)
	subq $32, %rsp
	leaq str479(%rip), %rdx
	movq %r15, %rcx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %rsi, %rcx
	callq builder_dependencies_dep_name
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	movq %rax, %rcx
	movq %rcx, -16(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	leaq str483(%rip), %rdx
	callq donna_files_join
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq str485(%rip), %rdx
	movq %rcx, %rsi
	movq %r15, %rcx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %rsi, %rcx
	movq %rcx, %rsi
	movq -16(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r13, %rcx
	callq donna_files_mkdir
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_dependencies_dep_src_dir
	movq %rsi, %rcx
	movq %rax, -24(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_dependencies_dep_name
	movq %rsi, %rcx
	movq %rax, %rdx
	movq %rcx, %rsi
	movq -24(%rbp), %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	callq builder_pipeline_compile_dir
	movq %r13, %rdx
	movq %rsi, %rcx
	movq -32(%rbp), %r13
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rsi, -40(%rbp)
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb122
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq %rsi, -48(%rbp)
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	movq %rdx, -72(%rbp)
	movq 16(%rax), %rax
	movq %rax, -64(%rbp)
	subq $32, %rsp
	callq builder_dependencies_dep_path
	movq %rsi, %rdx
	movq %rax, %rcx
	movq -40(%rbp), %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %r13, %r9
	movq %r12, %r8
	callq cli_cmd_build_compile_ffi_for_mode
	movq %r15, %rdx
	movq %rax, -88(%rbp)
	movq %r14, %rax
	movq %rdx, %r15
	movq -48(%rbp), %rdx
	movq -56(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movq %rax, %rcx
	callq donna_list_append
	movq %r15, %rdx
	movq %r14, %rcx
	movq %rax, -80(%rbp)
	movq %rbx, %rax
	movq -64(%rbp), %rbx
	movq %rdx, %r15
	movq -72(%rbp), %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movq %rax, %rcx
	callq donna_list_append
	movq %r15, %rdx
	movq %r14, %rcx
	movq %rax, -96(%rbp)
	movq %rdi, %rax
	movq -80(%rbp), %r15
	movq %rdx, %r14
	movq -88(%rbp), %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq donna_list_append
	movq %r15, %r8
	movq %r14, %rdx
	movq %rdi, %rcx
	movq -96(%rbp), %r9
	subq $-32, %rsp
	subq $64, %rsp
	movq %rsp, %rdi
	movq %r13, 48(%rdi)
	movq %r12, 40(%rdi)
	movq %rax, 32(%rdi)
	callq cli_cmd_build_compile_deps
	subq $-64, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb120
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r14
	movq 16(%rax), %r13
	movq 24(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rbx
	jz Lbb117
	movq %r12, (%rax)
	jmp Lbb119
Lbb117:
	movq $1, (%rax)
	movl $1, %r12d
Lbb119:
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r15, (%rbx)
	movq %r14, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %r12, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb121
Lbb120:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb121:
	movq %rax, (%rsi)
	jmp Lbb125
Lbb122:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb125
Lbb123:
	movq %r14, %r12
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq %r12, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rdi, 16(%rsi)
	movq $0, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb125:
	movq %rbp, %rsp
	subq $160, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_compile_deps */

.text
.balign 16
cli_cmd_build_has_public_main:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb131
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq cli_cmd_build_iface_has_main
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb129
	subq $32, %rsp
	callq cli_cmd_build_has_public_main
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb132
Lbb129:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb132
Lbb131:
	movl $0, %eax
Lbb132:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_has_public_main */

.text
.balign 16
cli_cmd_build_iface_has_main:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_build_bindings_have_main
	subq $-32, %rsp
	leave
	ret
/* end function cli_cmd_build_iface_has_main */

.text
.balign 16
cli_cmd_build_bindings_have_main:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb140
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str598(%rip), %rdx
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb138
	subq $32, %rsp
	callq cli_cmd_build_bindings_have_main
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb138:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb141
Lbb140:
	movl $0, %eax
Lbb141:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_bindings_have_main */

.text
.balign 16
cli_cmd_build_linker_flags:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str608(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb144
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str620(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb145
Lbb144:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str616(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb145:
	leave
	ret
/* end function cli_cmd_build_linker_flags */

.text
.balign 16
cli_cmd_build_linker_flags_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rsi
	subq $32, %rsp
	leaq str625(%rip), %rdx
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb148
	subq $32, %rsp
	callq cli_cmd_build_release_linker_flags
	subq $-32, %rsp
	jmp Lbb149
Lbb148:
	subq $32, %rsp
	callq cli_cmd_build_linker_flags
	subq $-32, %rsp
Lbb149:
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_linker_flags_for_mode */

.text
.balign 16
cli_cmd_build_release_linker_flags:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str637(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb156
	subq $32, %rsp
	leaq str646(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb155
	subq $32, %rsp
	leaq str655(%rip), %rdx
	callq strcmp
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb154
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str660(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb157
Lbb154:
	leaq donna_nil(%rip), %rax
	jmp Lbb157
Lbb155:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str651(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb157
Lbb156:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str642(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb157:
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_release_linker_flags */

.text
.balign 16
cli_cmd_build_cc_flags_for_mode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rsi
	subq $32, %rsp
	leaq str665(%rip), %rdx
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb160
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	leaq str672(%rip), %rax
	movq %rax, 8(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	subq $32, %rsp
	callq builder_pipeline_release_cc_target_flags
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb161
Lbb160:
	leaq donna_nil(%rip), %rax
Lbb161:
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_cc_flags_for_mode */

.text
.balign 16
cli_cmd_build_output_name_for_target:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	leaq str679(%rip), %rdx
	callq donna_string_equal
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	cmpq $1, %rcx
	jnz Lbb164
	subq $32, %rsp
	leaq str686(%rip), %rdx
	movq %rax, %rcx
	callq __rt_str_concat
	subq $-32, %rsp
Lbb164:
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_output_name_for_target */

.text
.balign 16
cli_cmd_build_maybe_codesign:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str689(%rip), %rcx
	callq donna_shell_run
	movq %rsi, %rdx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $0, %rax
	jz Lbb167
	subq $32, %rsp
	leaq str697(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str699(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	subq $-32, %rsp
	jmp Lbb168
Lbb167:
	movl $0, %eax
Lbb168:
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_maybe_codesign */

.text
.balign 16
cli_cmd_build_sh_quote:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str705(%rip), %r8
	leaq str704(%rip), %rdx
	callq donna_string_replace
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str703(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str708(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	leave
	ret
/* end function cli_cmd_build_sh_quote */

.text
.balign 16
cli_cmd_build_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb179
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb175
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb176
Lbb175:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str729(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb176:
	cmpl $0, %eax
	jnz Lbb178
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_build_first_positional
	subq $-32, %rsp
	jmp Lbb180
Lbb178:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb180
Lbb179:
	leaq str716(%rip), %rax
Lbb180:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_first_positional */

.text
.balign 16
cli_cmd_build_build_dir_arg:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq cli_cmd_build_first_positional
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str752(%rip), %rdx
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq donna_string_equal
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	cmpq $0, %rdx
	jz Lbb188
	subq $32, %rsp
	leaq str759(%rip), %rdx
	callq cli_cmd_build_flag_value
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str761(%rip), %rdx
	movq %rdi, %rcx
	callq donna_string_equal
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb187
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_string_is_empty
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb185
	movq %rax, (%rcx)
	jmp Lbb186
Lbb185:
	leaq str775(%rip), %rax
	movq %rax, (%rcx)
	leaq str775(%rip), %rax
Lbb186:
	movq %rax, (%rsi)
	jmp Lbb188
Lbb187:
	leaq str768(%rip), %rax
	movq %rax, (%rsi)
	leaq str768(%rip), %rax
Lbb188:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_build_dir_arg */

.text
.balign 16
cli_cmd_build_build_config:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str779(%rip), %rdx
	movq %rcx, %rsi
	callq cli_cmd_build_has_flag
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb196
	subq $32, %rsp
	leaq str788(%rip), %rdx
	callq cli_cmd_build_flag_value
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str790(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb195
	subq $32, %rsp
	callq cli_cmd_build_normalize_release_target
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb193
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %rbx, 8(%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r12, 8(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb194
Lbb193:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb194:
	movq %rax, (%rsi)
	jmp Lbb197
Lbb195:
	subq $32, %rsp
	callq cli_cmd_build_all_release_targets
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb197
Lbb196:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq cli_cmd_build_BuildDebug(%rip), %rcx
	movq %rcx, 8(%rax)
Lbb197:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_build_config */

.text
.balign 16
cli_cmd_build_has_flag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb203
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	callq donna_string_equal
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb201
	subq $32, %rsp
	callq cli_cmd_build_has_flag
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb204
Lbb201:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb204
Lbb203:
	movl $0, %eax
Lbb204:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_has_flag */

.text
.balign 16
cli_cmd_build_flag_value:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb209
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
	jz Lbb208
	subq $32, %rsp
	callq cli_cmd_build_flag_value
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb210
Lbb208:
	movq %rax, (%rsi)
	jmp Lbb210
Lbb209:
	leaq str854(%rip), %rax
Lbb210:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rdi
	callq donna_string_is_empty
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb213
	movq %rdi, %rcx
	jmp Lbb214
Lbb213:
	subq $32, %rsp
	callq cli_cmd_build_host_release_target
	movq %rax, %rcx
	subq $-32, %rsp
Lbb214:
	subq $16, %rsp
	movq %rsp, %rsi
	subq $32, %rsp
	leaq str882(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb236
	subq $32, %rsp
	leaq str890(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb235
	subq $32, %rsp
	leaq str898(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb234
	subq $32, %rsp
	leaq str906(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb233
	subq $32, %rsp
	leaq str914(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb232
	subq $32, %rsp
	leaq str922(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb231
	subq $32, %rsp
	leaq str930(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb230
	subq $32, %rsp
	leaq str938(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb229
	subq $32, %rsp
	leaq str946(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb228
	subq $32, %rsp
	leaq str954(%rip), %rdx
	movq %rcx, %rbx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb227
	subq $32, %rsp
	leaq str962(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb226
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str970(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str972(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_path
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb237
Lbb226:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq str967(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb237
Lbb227:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq str959(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb237
Lbb228:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq str951(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb237
Lbb229:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq str943(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb237
Lbb230:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq str935(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb237
Lbb231:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq str927(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb237
Lbb232:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq str919(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb237
Lbb233:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq str911(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb237
Lbb234:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq str903(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb237
Lbb235:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq str895(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb237
Lbb236:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq str887(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
Lbb237:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_normalize_release_target */

.text
.balign 16
.globl cli_cmd_build_all_release_targets
cli_cmd_build_all_release_targets:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	leaq str979(%rip), %rax
	movq %rax, 8(%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	leaq str983(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	leaq str987(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rsi, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	leaq str991(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str995(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rsi, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_all_release_targets */

.text
.balign 16
cli_cmd_build_host_release_target:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str999(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb244
	subq $32, %rsp
	leaq str1018(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb243
	leaq str1027(%rip), %rax
	movq %rax, (%rcx)
	leaq str1027(%rip), %rax
	jmp Lbb247
Lbb243:
	leaq str1026(%rip), %rax
	movq %rax, (%rcx)
	leaq str1026(%rip), %rax
	jmp Lbb247
Lbb244:
	subq $32, %rsp
	leaq str1007(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb246
	leaq str1016(%rip), %rax
	movq %rax, (%rcx)
	leaq str1016(%rip), %rax
	jmp Lbb247
Lbb246:
	leaq str1015(%rip), %rax
	movq %rax, (%rcx)
	leaq str1015(%rip), %rax
Lbb247:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function cli_cmd_build_host_release_target */

.text
.balign 16
.globl cli_cmd_build_release_target_dir
cli_cmd_build_release_target_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str1032(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	leaq str1037(%rip), %rax
	cmovnz %rcx, %rax
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_release_target_dir */

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

