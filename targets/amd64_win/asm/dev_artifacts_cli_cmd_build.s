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
str70:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str99:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str142:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str150:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str159:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
str161:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
str166:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str178:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
str180:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str182:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str185:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
str187:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str189:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str209:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str213:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str215:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str328:
	.ascii "main"
	.byte 0
/* end data */

.data
.balign 8
str338:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str346:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str350:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
str355:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str363:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
str365:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str375:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str388:
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
	movq %rdx, %r14
	movq %rcx, %rdi
	subq $32, %rsp
	callq donna_time_now_us
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r14, %rcx
	callq builder_scanner_project_build_dir
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %r14, %rcx
	callq builder_scanner_project_bin_dir
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %r14, %rcx
	callq builder_scanner_project_dev_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %r14, %rcx
	callq builder_scanner_project_dev_artifacts_dir
	movq %r13, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r15
	movq %r12, %rcx
	callq donna_files_mkdir
	movq %r15, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r15
	movq %rsi, %rcx
	callq donna_files_mkdir
	movq %r15, %rcx
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
	jnz Lbb31
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	movq %rsi, -24(%rbp)
	movq 24(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r14, %rcx
	callq builder_scanner_project_src_dir
	movq %r15, %r9
	movq %r12, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq %rdi, 32(%rax)
	leaq str70(%rip), %rdx
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
	jnz Lbb30
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
	jz Lbb27
	subq $32, %rsp
	callq donna_list_append
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_qbe_available
	subq $-32, %rsp
	movq %rbx, %r15
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb25
	subq $32, %rsp
	callq builder_pipeline_c_compiler_available
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz Lbb23
	subq $32, %rsp
	callq builder_pipeline_run_qbe_all_checked
	movq %r14, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -16(%rbp)
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb20
	movq 8(%rax), %rax
	movq %rax, -32(%rbp)
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
	movq %r13, %rcx
	movq %rax, -8(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r13, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rax, %r13
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	subq $32, %rsp
	movq %rcx, %r14
	movl $24, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %rdx
	movq %r13, %rax
	movq -16(%rbp), %r13
	movq %rcx, %r14
	movq -8(%rbp), %rcx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str142(%rip), %r8
	movq %r8, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq donna_list_append
	movq %r14, %rcx
	movq %rax, %rdx
	movq %rcx, %r14
	movq -24(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %r14, %rcx
	movq %rax, %rdx
	movq %rcx, %r14
	movq -32(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_c_command
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str150(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	movq %r14, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r14
	cmpq $0, %rax
	jz Lbb18
	subq $32, %rsp
	callq cli_cmd_build_maybe_codesign
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_time_now_us
	subq $-32, %rsp
	movq %rax, %rdx
	subq %r15, %rdx
	subq $32, %rsp
	leaq str166(%rip), %rcx
	callq utilities_logger_ok
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r14)
	jmp Lbb19
Lbb18:
	subq $32, %rsp
	leaq str159(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str161(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %r15
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
Lbb19:
	movq %rax, (%r13)
	jmp Lbb22
Lbb20:
	movq %r14, %r13
	movq 8(%rax), %r14
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
Lbb22:
	movq %rax, (%r12)
	jmp Lbb24
Lbb23:
	subq $32, %rsp
	callq cli_cmd_build_c_compiler_missing_error
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
Lbb24:
	movq %rax, (%rbx)
	jmp Lbb26
Lbb25:
	subq $32, %rsp
	callq cli_cmd_build_qbe_missing_error
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb26:
	movq %rax, (%rdi)
	jmp Lbb29
Lbb27:
	movq %r13, %r12
	movq %r14, %rcx
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
	leaq str99(%rip), %rcx
	callq utilities_logger_ok
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $0, 8(%rax)
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
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb32:
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
	leaq str178(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str180(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str182(%rip), %rdx
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
	leaq str185(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str187(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str189(%rip), %rdx
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
	movq 48(%rbp), %r15
	movq %r9, %rbx
	movq %r8, %rdi
	movq %rdx, %r12
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb48
	movq 8(%rax), %rsi
	movq 16(%rax), %r13
	movq %r13, -8(%rbp)
	subq $32, %rsp
	leaq str209(%rip), %rdx
	movq %r12, %rcx
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
	subq $-32, %rsp
	subq $32, %rsp
	leaq str213(%rip), %rdx
	movq %rcx, %r13
	callq donna_files_join
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	leaq str215(%rip), %rdx
	movq %rcx, %r13
	movq %r12, %rcx
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
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r14, %rcx
	callq donna_files_mkdir
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_dependencies_dep_src_dir
	movq %rsi, %rcx
	movq %rax, -16(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_dependencies_dep_name
	movq %rsi, %rcx
	movq %rax, %rdx
	movq %rcx, %rsi
	movq -16(%rbp), %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %rdi, %r9
	movq %r14, %r8
	callq builder_pipeline_compile_dir
	movq %r14, %rdx
	movq %rsi, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb47
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq %r14, -24(%rbp)
	movq %rdx, %r14
	movq 8(%rax), %rdx
	movq %rdx, -40(%rbp)
	movq 16(%rax), %rax
	movq %rax, -32(%rbp)
	subq $32, %rsp
	callq builder_dependencies_dep_path
	movq %r14, %rdx
	movq %rax, %rcx
	movq -24(%rbp), %r14
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_compile_ffi
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, -48(%rbp)
	movq %rdi, %rax
	movq %rbx, %rdi
	movq -32(%rbp), %rbx
	movq -40(%rbp), %r14
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %rax, %rcx
	callq donna_list_append
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r13
	movq %rdi, %rax
	movq -48(%rbp), %r14
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq donna_list_append
	movq %r14, %rdx
	movq %rdi, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r15, %rcx
	callq donna_list_append
	movq %r14, %r9
	movq %r13, %r8
	movq %r12, %rdx
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
	jnz Lbb45
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r14
	movq 16(%rax), %r13
	movq 24(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rbx
	jz Lbb42
	movq %r12, (%rax)
	jmp Lbb44
Lbb42:
	movq $1, (%rax)
	movl $1, %r12d
Lbb44:
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
	jmp Lbb46
Lbb45:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb46:
	movq %rax, (%rsi)
	jmp Lbb50
Lbb47:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb50
Lbb48:
	movq %rdi, %r12
	movq %r15, %rdi
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
Lbb50:
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
	jz Lbb56
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
	jz Lbb54
	subq $32, %rsp
	callq cli_cmd_build_has_public_main
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb57
Lbb54:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb57
Lbb56:
	movl $0, %eax
Lbb57:
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
	jz Lbb65
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str328(%rip), %rdx
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb63
	subq $32, %rsp
	callq cli_cmd_build_bindings_have_main
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb66
Lbb63:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb66
Lbb65:
	movl $0, %eax
Lbb66:
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
	leaq str338(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb69
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str350(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb70
Lbb69:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str346(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb70:
	leave
	ret
/* end function cli_cmd_build_linker_flags */

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
	leaq str355(%rip), %rcx
	callq donna_shell_run
	movq %rsi, %rdx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $0, %rax
	jz Lbb73
	subq $32, %rsp
	leaq str363(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str365(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	subq $-32, %rsp
	jmp Lbb74
Lbb73:
	movl $0, %eax
Lbb74:
	popq %rsi
	leave
	ret
/* end function cli_cmd_build_maybe_codesign */

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
	jz Lbb83
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb79
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb80
Lbb79:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str388(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb80:
	cmpl $0, %eax
	jnz Lbb82
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_build_first_positional
	subq $-32, %rsp
	jmp Lbb84
Lbb82:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb84
Lbb83:
	leaq str375(%rip), %rax
Lbb84:
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

