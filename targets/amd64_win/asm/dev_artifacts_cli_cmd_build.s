.data
.balign 8
str14:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str16:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str32:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str44:
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
str69:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str97:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str125:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str133:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str142:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
str144:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
str147:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
str149:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str152:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str162:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
str164:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str166:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str169:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
str171:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str173:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str192:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str196:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str198:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str308:
	.ascii "main"
	.byte 0
/* end data */

.data
.balign 8
str318:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str326:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str330:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
str341:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str354:
	.ascii ""
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
.globl cli_cmd_build_run
cli_cmd_build_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq cli_cmd_build_first_positional
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_scanner_scan
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb8
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq cli_cmd_build_build_project
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb7
	leaq str32(%rip), %rax
	movq %rax, (%rcx)
	leaq str32(%rip), %rax
	jmp Lbb9
Lbb7:
	movq 8(%rax), %rax
	movq %rax, (%rcx)
	jmp Lbb9
Lbb8:
	movq 8(%rax), %rsi
	subq $32, %rsp
	leaq str14(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str16(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb9:
	movq %rbp, %rsp
	subq $16, %rsp
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
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %rdx, %r15
	movq %rcx, %rdi
	subq $32, %rsp
	callq donna_time_now_us
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r15, %rcx
	callq builder_scanner_project_build_dir
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %r15, %rcx
	callq builder_scanner_project_bin_dir
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %r15, %rcx
	callq builder_scanner_project_dev_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %r15, %rcx
	callq builder_scanner_project_dev_artifacts_dir
	movq %r13, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movq %r12, %rcx
	callq donna_files_mkdir
	movq %r14, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movq %rsi, %rcx
	callq donna_files_mkdir
	movq %r14, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r13, %rcx
	callq donna_files_mkdir
	movq %r12, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	leaq str44(%rip), %rdx
	movq %rcx, %rdi
	callq donna_files_join
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	movq %rdi, %rdx
	callq builder_dependencies_resolve_deps
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	movq %r13, %rdx
	callq builder_pipeline_compile_ffi
	movq %r13, %r8
	movq %r12, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rdi
	movq %rax, 32(%rdi)
	leaq donna_nil(%rip), %r9
	movq %r8, %r12
	leaq donna_nil(%rip), %r8
	callq cli_cmd_build_compile_deps
	movq %rsi, %rcx
	subq $-48, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %r13
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb27
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	movq %rsi, -24(%rbp)
	movq 24(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r15, %rcx
	callq builder_scanner_project_src_dir
	movq %r14, %r9
	movq %r12, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq %rdi, 32(%rax)
	leaq str69(%rip), %rdx
	callq builder_pipeline_compile_dir
	movq %rsi, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb26
	movq 8(%rax), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq cli_cmd_build_has_public_main
	movq %r12, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rax
	jz Lbb23
	subq $32, %rsp
	callq donna_list_append
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_qbe_available
	subq $-32, %rsp
	movq %rbx, %r14
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb21
	subq $32, %rsp
	callq builder_pipeline_c_compiler_available
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz Lbb19
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_pipeline_run_qbe_all
	movq %r15, %rcx
	movq %rax, -32(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_project_name
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_build_linker_flags
	movq %rax, -16(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, %r15
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r15)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	movq %r15, %rax
	movq -16(%rbp), %rcx
	movq -24(%rbp), %r15
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str125(%rip), %r8
	movq %r8, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq donna_list_append
	movq %r15, %rcx
	movq %rax, %rdx
	movq -32(%rbp), %r15
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_c_command
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq str133(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	movq %r13, %rdx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $0, %rax
	jz Lbb17
	subq $32, %rsp
	leaq str147(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str149(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_time_now_us
	subq $-32, %rsp
	movq %rax, %rdx
	subq %r14, %rdx
	subq $32, %rsp
	leaq str152(%rip), %rcx
	callq utilities_logger_ok
	subq $-32, %rsp
	subq $32, %rsp
	movl $1, %ecx
	callq cli_cmd_build_BuildOk
	subq $-32, %rsp
	movq %rax, (%r13)
	jmp Lbb18
Lbb17:
	subq $32, %rsp
	leaq str142(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str144(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_build_BuildFailed
	subq $-32, %rsp
	movq %rax, (%r13)
Lbb18:
	movq %rax, (%r12)
	jmp Lbb20
Lbb19:
	subq $32, %rsp
	callq cli_cmd_build_c_compiler_missing_error
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_build_BuildFailed
	subq $-32, %rsp
	movq %rax, (%r12)
Lbb20:
	movq %rax, (%rbx)
	jmp Lbb22
Lbb21:
	subq $32, %rsp
	callq cli_cmd_build_qbe_missing_error
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_build_BuildFailed
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb22:
	movq %rax, (%rdi)
	jmp Lbb25
Lbb23:
	movq %r13, %r12
	movq %r15, %rcx
	subq $32, %rsp
	callq builder_scanner_project_name
	movq %r12, %rcx
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
	subq %rbx, %rdx
	subq $32, %rsp
	leaq str97(%rip), %rcx
	callq utilities_logger_ok
	subq $-32, %rsp
	subq $32, %rsp
	movl $0, %ecx
	callq cli_cmd_build_BuildOk
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb25:
	movq %rax, (%rsi)
	jmp Lbb28
Lbb26:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq cli_cmd_build_BuildFailed
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb28
Lbb27:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq cli_cmd_build_BuildFailed
	subq $-32, %rsp
Lbb28:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_build_project */

.text
.balign 16
cli_cmd_build_qbe_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str162(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str164(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str166(%rip), %rdx
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
	leaq str169(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str171(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str173(%rip), %rdx
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
cli_cmd_build_compile_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq 48(%rbp), %rsi
	movq %r9, %rdi
	movq %r8, %r12
	movq %rdx, %rbx
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb44
	movq 8(%rax), %r14
	movq 16(%rax), %r13
	movq %r13, -8(%rbp)
	subq $32, %rsp
	leaq str192(%rip), %rdx
	movq %rbx, %rcx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %r14, %rcx
	callq builder_dependencies_dep_name
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str196(%rip), %rdx
	movq %rcx, %r13
	callq donna_files_join
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r15
	leaq str198(%rip), %rdx
	movq %rcx, %r13
	movq %rbx, %rcx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %r13, %rcx
	movq -8(%rbp), %r13
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %r14, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movq %r15, %rcx
	callq donna_files_mkdir
	movq %r14, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	callq builder_dependencies_dep_src_dir
	movq %r14, %rcx
	movq %rax, -16(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	callq builder_dependencies_dep_name
	movq %r14, %rcx
	movq %rax, %rdx
	movq %rcx, %r14
	movq -16(%rbp), %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %r12, %r9
	movq %r15, %r8
	callq builder_pipeline_compile_dir
	movq %r15, %rdx
	movq %r14, %rcx
	subq $-48, %rsp
	movq %rsi, %r14
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb43
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq %r15, -24(%rbp)
	movq %rdx, %r15
	movq 8(%rax), %rdx
	movq %rdx, -40(%rbp)
	movq 16(%rax), %rax
	movq %rax, -32(%rbp)
	subq $32, %rsp
	callq builder_dependencies_dep_path
	movq %r15, %rdx
	movq %rax, %rcx
	movq -24(%rbp), %r15
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_compile_ffi
	movq %r15, %rdx
	movq %r13, %rcx
	movq %rax, -48(%rbp)
	movq %r12, %rax
	movq -32(%rbp), %r15
	movq -40(%rbp), %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movq %rax, %rcx
	callq donna_list_append
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r12
	movq %rdi, %rax
	movq -48(%rbp), %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq donna_list_append
	movq %r13, %rdx
	movq %rdi, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r14, %rcx
	callq donna_list_append
	movq %r13, %r9
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rdi
	movq %rax, 32(%rdi)
	callq cli_cmd_build_compile_deps
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb41
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq 8(%rax), %r13
	movq 16(%rax), %r12
	movq 24(%rax), %rbx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %r15
	jz Lbb38
	movq %rbx, (%rax)
	jmp Lbb40
Lbb38:
	movq $1, (%rax)
	movl $1, %ebx
Lbb40:
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r14, (%rcx)
	movq %r13, 8(%rcx)
	movq %r12, 16(%rcx)
	movq %rbx, 24(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb42
Lbb41:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb42:
	movq %rax, (%rsi)
	jmp Lbb46
Lbb43:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb46
Lbb44:
	movq %r12, %rbx
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rbx, (%rcx)
	movq %rdi, 8(%rcx)
	movq %rsi, 16(%rcx)
	movq $0, 24(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
Lbb46:
	movq %rbp, %rsp
	subq $112, %rsp
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
	jz Lbb52
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
	jz Lbb50
	subq $32, %rsp
	callq cli_cmd_build_has_public_main
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb53
Lbb50:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb53
Lbb52:
	movl $0, %eax
Lbb53:
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
	jz Lbb61
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str308(%rip), %rdx
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb59
	subq $32, %rsp
	callq cli_cmd_build_bindings_have_main
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb62
Lbb59:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb62
Lbb61:
	movl $0, %eax
Lbb62:
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
	leaq str318(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb65
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str330(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb66
Lbb65:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str326(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb66:
	leave
	ret
/* end function cli_cmd_build_linker_flags */

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
	jz Lbb75
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb71
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb72
Lbb71:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str354(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb72:
	cmpl $0, %eax
	jnz Lbb74
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_build_first_positional
	subq $-32, %rsp
	jmp Lbb76
Lbb74:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb76
Lbb75:
	leaq str341(%rip), %rax
Lbb76:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_first_positional */

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

