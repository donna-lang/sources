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
str57:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str59:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str74:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str84:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str86:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str107:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str143:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str152:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
str154:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
str157:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
str159:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str162:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str172:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
str174:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str176:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str179:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
str181:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str183:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str202:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str206:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str208:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str318:
	.ascii "main"
	.byte 0
/* end data */

.data
.balign 8
str328:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str336:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str340:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
str351:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str364:
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
.globl cli_cmd_build_run
cli_cmd_build_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq cli_cmd_build_first_positional
	movq %rax, %rdi
	movq %rdi, %rbx
	callq builder_scanner_scan
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb8
	movq 8(%rax), %rsi
	callq cli_cmd_build_build_project
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz .Lbb7
	leaq str32(%rip), %rax
	movq %rax, (%rcx)
	leaq str32(%rip), %rax
	jmp .Lbb9
.Lbb7:
	movq 8(%rax), %rax
	movq %rax, (%rcx)
	jmp .Lbb9
.Lbb8:
	movq 8(%rax), %rbx
	leaq str14(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str16(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
.Lbb9:
	movq %rbp, %rsp
	subq $16, %rsp
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
	subq $120, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r15
	movq %rdi, %rbx
	callq donna_time_now_us
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movq %r15, %rdi
	callq builder_scanner_project_build_dir
	movq %rbx, %rdi
	movq %rax, %r14
	movq %r14, -24(%rbp)
	movq %rdi, %rbx
	movq %r15, %rdi
	callq builder_scanner_project_bin_dir
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r12
	movq %r15, %rdi
	callq builder_scanner_project_dev_dir
	movq %r12, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %r12
	movq %r15, %rdi
	callq builder_scanner_project_dev_artifacts_dir
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %r14
	movq %rdi, %r12
	movq %rsi, %rdi
	callq donna_files_mkdir
	movq %r12, %rdi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq donna_files_mkdir
	movq %r12, %rdi
	movq %rdi, %r12
	movq -16(%rbp), %rdi
	callq donna_files_mkdir
	movq %r12, %rdi
	movq %rdi, %r12
	movq %r14, %rdi
	callq donna_files_mkdir
	movq %r12, %rdi
	leaq str44(%rip), %rsi
	movq %rdi, %r12
	callq donna_files_join
	movq %rax, %rdi
	movq %r12, %rsi
	callq builder_dependencies_resolve_deps
	movq %r12, %rdi
	movq %rax, -32(%rbp)
	movq -24(%rbp), %rsi
	movq %rsi, %r12
	movq %r14, %rsi
	callq builder_pipeline_compile_ffi
	movq %r14, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r8
	movq %rdi, %r14
	movq -32(%rbp), %rdi
	leaq donna_nil(%rip), %rcx
	movq %rdx, %rbx
	leaq donna_nil(%rip), %rdx
	callq cli_cmd_build_compile_deps
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb30
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %rdi
	movq %rdi, -48(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -88(%rbp)
	movq 24(%rax), %r8
	movq %r8, -40(%rbp)
	movq %r15, %rdi
	callq builder_scanner_project_src_dir
	movq %r12, %rcx
	movq %rbx, %rdx
	movq %rax, %rdi
	movq -40(%rbp), %r8
	movq -48(%rbp), %rbx
	leaq str74(%rip), %rsi
	callq builder_pipeline_compile_dir
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb29
	movq 8(%rax), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	movq 8(%rax), %rsi
	movq %rsi, -56(%rbp)
	callq cli_cmd_build_has_public_main
	movq %r12, %rdi
	movq -56(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz .Lbb26
	callq donna_list_append
	movq %rax, -64(%rbp)
	callq builder_pipeline_qbe_available
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -80(%rbp)
	cmpq $0, %rcx
	jz .Lbb23
	callq builder_pipeline_c_compiler_available
	movq %r14, %rdi
	movq %rax, %rdx
	movq -80(%rbp), %rax
	movq %rdi, %r14
	movq -64(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -104(%rbp)
	cmpq $0, %rdx
	jz .Lbb20
	leaq donna_nil(%rip), %rsi
	callq builder_pipeline_run_qbe_all
	movq %r15, %rdi
	movq %rax, -96(%rbp)
	callq builder_scanner_project_name
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rdi, %r14
	callq donna_files_join
	movq %rax, %r14
	callq cli_cmd_build_linker_flags
	movq %rax, -72(%rbp)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, %r15
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r15)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq %r15, %rax
	movq %r13, %r15
	movq -80(%rbp), %r13
	movq -72(%rbp), %rdi
	movq $1, (%rsi)
	leaq str135(%rip), %rcx
	movq %rcx, 8(%rsi)
	movq %rax, 16(%rsi)
	callq donna_list_append
	movq %rax, %rsi
	movq -88(%rbp), %rdi
	callq donna_list_append
	movq %rax, %rsi
	movq -96(%rbp), %rdi
	callq donna_list_append
	movq %rax, %rdi
	callq builder_pipeline_c_command
	movq %r14, %rsi
	movq %rax, %rdi
	movq %rsi, %r14
	leaq str143(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_shell_run
	movq %r14, %rsi
	movq -104(%rbp), %r14
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -112(%rbp)
	cmpq $0, %rcx
	jz .Lbb17
	leaq str157(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str159(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_shell_run
	callq donna_time_now_us
	movq %rax, %rcx
	movq %r15, %rax
	movq -112(%rbp), %r15
	movq %rcx, %rsi
	subq %rax, %rsi
	leaq str162(%rip), %rdi
	callq utilities_logger_ok
	movl $1, %edi
	callq cli_cmd_build_BuildOk
	movq %rax, (%r15)
	jmp .Lbb19
.Lbb17:
	movq %rax, %r15
	leaq str152(%rip), %rdi
	callq utilities_colors_red
	movq %rax, %rdi
	leaq str154(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq cli_cmd_build_BuildFailed
	movq %rax, (%r15)
.Lbb19:
	movq %rax, (%r14)
	jmp .Lbb22
.Lbb20:
	movq %rcx, %r14
	movq %rax, %r13
	callq cli_cmd_build_c_compiler_missing_error
	movq %rax, %rdi
	callq cli_cmd_build_BuildFailed
	movq %rax, (%r14)
.Lbb22:
	movq %rax, (%r13)
	jmp .Lbb25
.Lbb23:
	movq %rax, %r13
	callq cli_cmd_build_qbe_missing_error
	movq %rax, %rdi
	callq cli_cmd_build_BuildFailed
	movq %rax, (%r13)
.Lbb25:
	movq %rax, (%r12)
	jmp .Lbb28
.Lbb26:
	movq %r15, %rdi
	callq builder_scanner_project_name
	movq %r14, %rdi
	movq %rax, %rsi
	callq donna_files_join
	movq %rax, %rdi
	callq donna_files_delete
	callq donna_time_now_us
	movq %rax, %rsi
	subq %r13, %rsi
	leaq str107(%rip), %rdi
	callq utilities_logger_ok
	movl $0, %edi
	callq cli_cmd_build_BuildOk
	movq %rax, (%r12)
.Lbb28:
	movq %rax, (%rbx)
	jmp .Lbb31
.Lbb29:
	movq 8(%rax), %r12
	leaq str84(%rip), %rdi
	callq utilities_colors_red
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq str86(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq cli_cmd_build_BuildFailed
	movq %rax, (%rbx)
	jmp .Lbb31
.Lbb30:
	movq 8(%rax), %rbx
	leaq str57(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str59(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq cli_cmd_build_BuildFailed
.Lbb31:
	movq %rbp, %rsp
	subq $160, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_build_build_project, @function
.size cli_cmd_build_build_project, .-cli_cmd_build_build_project
/* end function cli_cmd_build_build_project */

.text
.balign 16
cli_cmd_build_qbe_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str172(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, %rbx
	leaq str174(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str176(%rip), %rsi
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
	leaq str179(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, %rbx
	leaq str181(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str183(%rip), %rsi
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
	movq %rcx, %r15
	movq %rdx, %r14
	movq %rsi, %r12
	movq %r8, -24(%rbp)
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb47
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, -48(%rbp)
	leaq str202(%rip), %rsi
	movq %r12, %rdi
	callq donna_files_join
	movq %rax, %rdi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq builder_dependencies_dep_name
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_files_join
	movq %rax, %rdi
	movq %rdi, -8(%rbp)
	leaq str206(%rip), %rsi
	callq donna_files_join
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %r13
	leaq str208(%rip), %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_files_join
	movq %rax, %rdi
	callq donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq -8(%rbp), %rdi
	callq donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	callq builder_dependencies_dep_src_dir
	movq %rbx, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %rbx
	callq builder_dependencies_dep_name
	movq %r15, %rcx
	movq %r14, %rdx
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	movq -16(%rbp), %rdi
	movl $0, %r8d
	movq %rcx, %r15
	movq %rdx, %rcx
	movq %rdx, %r14
	movq %r13, %rdx
	callq builder_pipeline_compile_dir
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq -24(%rbp), %r8
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -32(%rbp)
	movq (%rax), %r9
	cmpq $1, %r9
	movq %r8, %r14
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz .Lbb46
	movq 8(%rax), %rax
	movq %rdx, %r13
	movq (%rax), %rdx
	movq %rdx, -40(%rbp)
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	movq %rsi, -64(%rbp)
	movq %rcx, %r15
	movq 16(%rax), %rcx
	movq %rcx, -56(%rbp)
	callq builder_dependencies_dep_path
	movq %rbx, %rsi
	movq %rax, %rdi
	movq -32(%rbp), %rbx
	callq builder_pipeline_compile_ffi
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, -80(%rbp)
	movq %rsi, %r13
	movq -40(%rbp), %rsi
	movq -48(%rbp), %rdi
	movq %rdi, %r12
	movq %rdx, %rdi
	callq donna_list_append
	movq %r15, %rcx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, -72(%rbp)
	movq -56(%rbp), %r15
	movq %rsi, %r13
	movq -64(%rbp), %rsi
	movq %rdi, %r12
	movq %rcx, %rdi
	callq donna_list_append
	movq %r14, %r8
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, -88(%rbp)
	movq -72(%rbp), %r14
	movq %rsi, %r13
	movq -80(%rbp), %rsi
	movq %rdi, %r12
	movq %r8, %rdi
	callq donna_list_append
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r8
	movq %rcx, %r12
	movq -88(%rbp), %rcx
	callq cli_cmd_build_compile_deps
	movq %r12, %rcx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb44
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r14
	movq 16(%rax), %rdx
	movq %rdx, -96(%rbp)
	movq 24(%rax), %r13
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb41
	movq %r13, (%rax)
	jmp .Lbb43
.Lbb41:
	movq $1, (%rax)
	movl $1, %r13d
.Lbb43:
	movl $32, %edi
	callq malloc
	movq %rax, %rdi
	movq -96(%rbp), %rax
	movq %r15, (%rdi)
	movq %r14, 8(%rdi)
	movq %rax, 16(%rdi)
	movq %r13, 24(%rdi)
	callq donna_result_Ok
	movq %rax, (%r12)
	jmp .Lbb45
.Lbb44:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%r12)
.Lbb45:
	movq %rax, (%rbx)
	jmp .Lbb49
.Lbb46:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb49
.Lbb47:
	movq %r8, %r13
	movq %r15, %r12
	movq %r14, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %r8
	movq %r12, %rcx
	movq %rbx, %rdx
	movq %rax, %rdi
	movq %rdx, (%rdi)
	movq %rcx, 8(%rdi)
	movq %r8, 16(%rdi)
	movq $0, 24(%rdi)
	callq donna_result_Ok
.Lbb49:
	movq %rbp, %rsp
	subq $144, %rsp
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
	jz .Lbb55
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq cli_cmd_build_iface_has_main
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb53
	callq cli_cmd_build_has_public_main
	movq %rax, (%rbx)
	jmp .Lbb56
.Lbb53:
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb56
.Lbb55:
	movl $0, %eax
.Lbb56:
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
	jz .Lbb64
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	leaq str318(%rip), %rsi
	callq donna_string_equal
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb62
	callq cli_cmd_build_bindings_have_main
	movq %rax, (%rbx)
	jmp .Lbb65
.Lbb62:
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb65
.Lbb64:
	movl $0, %eax
.Lbb65:
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
	leaq str328(%rip), %rdi
	callq donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb68
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	leaq str340(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb69
.Lbb68:
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	leaq str336(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
.Lbb69:
	leave
	ret
.type cli_cmd_build_linker_flags, @function
.size cli_cmd_build_linker_flags, .-cli_cmd_build_linker_flags
/* end function cli_cmd_build_linker_flags */

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
	jz .Lbb78
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb74
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb75
.Lbb74:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str364(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb75:
	cmpl $0, %eax
	jnz .Lbb77
	movq 16(%rdi), %rdi
	callq cli_cmd_build_first_positional
	jmp .Lbb79
.Lbb77:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp .Lbb79
.Lbb78:
	leaq str351(%rip), %rax
.Lbb79:
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
