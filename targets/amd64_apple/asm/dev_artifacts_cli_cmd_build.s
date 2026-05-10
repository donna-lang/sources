.data
.balign 8
_str14:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str16:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str32:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str44:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str57:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str59:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str74:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str84:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str86:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str107:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
_str143:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str152:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
_str154:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
_str157:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
_str159:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str162:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str172:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
_str174:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str176:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str179:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
_str181:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str183:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str202:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str206:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str208:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str318:
	.ascii "main"
	.byte 0
/* end data */

.data
.balign 8
_str328:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str336:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
_str340:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
_str351:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str364:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl _cli_cmd_build_BuildOk
_cli_cmd_build_BuildOk:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_BuildOk */

.text
.balign 16
.globl _cli_cmd_build_BuildFailed
_cli_cmd_build_BuildFailed:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_BuildFailed */

.text
.balign 16
.globl _cli_cmd_build_run
_cli_cmd_build_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _cli_cmd_build_first_positional
	movq %rax, %rdi
	movq %rdi, %rbx
	callq _builder_scanner_scan
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb8
	movq 8(%rax), %rsi
	callq _cli_cmd_build_build_project
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb7
	leaq _str32(%rip), %rax
	movq %rax, (%rcx)
	leaq _str32(%rip), %rax
	jmp Lbb9
Lbb7:
	movq 8(%rax), %rax
	movq %rax, (%rcx)
	jmp Lbb9
Lbb8:
	movq 8(%rax), %rbx
	leaq _str14(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str16(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
Lbb9:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_run */

.text
.balign 16
.globl _cli_cmd_build_build_project
_cli_cmd_build_build_project:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $104, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r15
	movq %rdi, %rbx
	callq _donna_time_now_us
	movq %rbx, %rdi
	movq %rax, %r13
	movq %r13, -96(%rbp)
	movq %rdi, %rbx
	movq %r15, %rdi
	callq _builder_scanner_project_build_dir
	movq %rbx, %rdi
	movq %rax, %r14
	movq %r14, -16(%rbp)
	movq %rdi, %rbx
	movq %r15, %rdi
	callq _builder_scanner_project_bin_dir
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r12
	movq %r15, %rdi
	callq _builder_scanner_project_dev_dir
	movq %r12, %rdi
	movq %rax, -8(%rbp)
	movq %rdi, %r12
	movq %r15, %rdi
	callq _builder_scanner_project_dev_artifacts_dir
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %r14
	movq %rdi, %r12
	movq %rsi, %rdi
	callq _donna_files_mkdir
	movq %r12, %rdi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _donna_files_mkdir
	movq %r12, %rdi
	movq %rdi, %r12
	movq -8(%rbp), %rdi
	callq _donna_files_mkdir
	movq %r12, %rdi
	movq %rdi, %r12
	movq %r14, %rdi
	callq _donna_files_mkdir
	movq %r12, %rdi
	leaq _str44(%rip), %rsi
	movq %rdi, %r12
	callq _donna_files_join
	movq %rax, %rdi
	movq %r12, %rsi
	callq _builder_dependencies_resolve_deps
	movq %r12, %rdi
	movq %rax, -24(%rbp)
	movq -16(%rbp), %rsi
	movq %rsi, %r12
	movq %r14, %rsi
	callq _builder_pipeline_compile_ffi
	movq %r14, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r8
	movq %rdi, %r14
	movq -24(%rbp), %rdi
	leaq _donna_nil(%rip), %rcx
	movq %rdx, %rbx
	leaq _donna_nil(%rip), %rdx
	callq _cli_cmd_build_compile_deps
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb28
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq %rcx, -40(%rbp)
	movq 8(%rax), %rdi
	movq %rdi, -32(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -80(%rbp)
	movq 24(%rax), %r12
	movq %r15, %rdi
	callq _builder_scanner_project_src_dir
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rax, %rdi
	movq -32(%rbp), %rbx
	movq -40(%rbp), %rcx
	leaq _str74(%rip), %rsi
	callq _builder_pipeline_compile_dir
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb27
	movq 8(%rax), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	movq 8(%rax), %rsi
	movq %rsi, -48(%rbp)
	callq _cli_cmd_build_has_public_main
	movq %r12, %rdi
	movq %rax, %rcx
	movq %r13, %rax
	movq -48(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rcx
	jz Lbb24
	callq _donna_list_append
	movq %rax, -56(%rbp)
	callq _builder_pipeline_qbe_available
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $0, %rax
	jz Lbb22
	callq _builder_pipeline_c_compiler_available
	movq %r14, %rdi
	movq %rax, %rcx
	movq %rdi, %r14
	movq -56(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -72(%rbp)
	cmpq $0, %rcx
	jz Lbb19
	leaq _donna_nil(%rip), %rsi
	callq _builder_pipeline_run_qbe_all
	movq %r15, %rdi
	movq %rax, -88(%rbp)
	callq _builder_scanner_project_name
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rdi, %r14
	callq _donna_files_join
	movq %rax, %r15
	callq _cli_cmd_build_linker_flags
	movq %rax, -64(%rbp)
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %rax, %r14
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%r14)
	movl $24, %edi
	callq _malloc
	movq %rax, %rsi
	movq %r14, %rax
	movq -72(%rbp), %r14
	movq -64(%rbp), %rdi
	movq $1, (%rsi)
	leaq _str135(%rip), %rcx
	movq %rcx, 8(%rsi)
	movq %rax, 16(%rsi)
	callq _donna_list_append
	movq %rax, %rsi
	movq -80(%rbp), %rdi
	callq _donna_list_append
	movq %rax, %rsi
	movq -88(%rbp), %rdi
	callq _donna_list_append
	movq %rax, %rdi
	callq _builder_pipeline_c_command
	movq %r15, %rsi
	movq %rax, %rdi
	movq %rsi, %r15
	leaq _str143(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _donna_shell_run
	movq %r15, %rsi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r15
	cmpq $0, %rax
	jz Lbb17
	leaq _str157(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str159(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _donna_shell_run
	callq _donna_time_now_us
	movq %rax, %rcx
	movq -96(%rbp), %rax
	movq %rcx, %rsi
	subq %rax, %rsi
	leaq _str162(%rip), %rdi
	callq _utilities_logger_ok
	movl $1, %edi
	callq _cli_cmd_build_BuildOk
	movq %rax, (%r15)
	jmp Lbb18
Lbb17:
	leaq _str152(%rip), %rdi
	callq _utilities_colors_red
	movq %rax, %rdi
	leaq _str154(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _cli_cmd_build_BuildFailed
	movq %rax, (%r15)
Lbb18:
	movq %rax, (%r14)
	jmp Lbb21
Lbb19:
	movq %rax, %r14
	callq _cli_cmd_build_c_compiler_missing_error
	movq %rax, %rdi
	callq _cli_cmd_build_BuildFailed
	movq %rax, (%r14)
Lbb21:
	movq %rax, (%r13)
	jmp Lbb23
Lbb22:
	callq _cli_cmd_build_qbe_missing_error
	movq %rax, %rdi
	callq _cli_cmd_build_BuildFailed
	movq %rax, (%r13)
Lbb23:
	movq %rax, (%r12)
	jmp Lbb26
Lbb24:
	movq %rax, %r13
	movq %r15, %rdi
	callq _builder_scanner_project_name
	movq %r14, %rdi
	movq %rax, %rsi
	callq _donna_files_join
	movq %rax, %rdi
	callq _donna_files_delete
	callq _donna_time_now_us
	movq %rax, %rsi
	subq %r13, %rsi
	leaq _str107(%rip), %rdi
	callq _utilities_logger_ok
	movl $0, %edi
	callq _cli_cmd_build_BuildOk
	movq %rax, (%r12)
Lbb26:
	movq %rax, (%rbx)
	jmp Lbb29
Lbb27:
	movq 8(%rax), %r12
	leaq _str84(%rip), %rdi
	callq _utilities_colors_red
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str86(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _cli_cmd_build_BuildFailed
	movq %rax, (%rbx)
	jmp Lbb29
Lbb28:
	movq 8(%rax), %rbx
	leaq _str57(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str59(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _cli_cmd_build_BuildFailed
Lbb29:
	movq %rbp, %rsp
	subq $144, %rsp
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
_cli_cmd_build_qbe_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _str172(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, %rbx
	leaq _str174(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str176(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_qbe_missing_error */

.text
.balign 16
_cli_cmd_build_c_compiler_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _str179(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, %rbx
	leaq _str181(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str183(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_c_compiler_missing_error */

.text
.balign 16
_cli_cmd_build_compile_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r15
	movq %rdx, %r14
	movq %rsi, %r13
	movq %r8, -24(%rbp)
	movq %r15, -8(%rbp)
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb45
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, -56(%rbp)
	leaq _str202(%rip), %rsi
	movq %r13, %rdi
	callq _donna_files_join
	movq %rax, %rdi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _builder_dependencies_dep_name
	movq %r12, %rdi
	movq %rax, %rsi
	callq _donna_files_join
	movq %rax, %rdi
	leaq _str206(%rip), %rsi
	movq %rdi, %r12
	callq _donna_files_join
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rsi, %r12
	leaq _str208(%rip), %rsi
	movq %rdi, %r15
	movq %r13, %rdi
	callq _donna_files_join
	movq %rax, %rdi
	callq _donna_files_mkdir
	movq %r15, %rdi
	movq -8(%rbp), %r15
	callq _donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	callq _builder_dependencies_dep_src_dir
	movq %rbx, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %rbx
	callq _builder_dependencies_dep_name
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
	movq %r12, %rdx
	callq _builder_pipeline_compile_dir
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb44
	movq 8(%rax), %rax
	movq %rdx, %r12
	movq (%rax), %rdx
	movq %rdx, -32(%rbp)
	movq %rsi, %r15
	movq 8(%rax), %rsi
	movq %rsi, -40(%rbp)
	movq %rcx, %r14
	movq 16(%rax), %rcx
	movq %rcx, -48(%rbp)
	callq _builder_dependencies_dep_path
	movq %r15, %rsi
	movq %rax, %rdi
	movq -24(%rbp), %r15
	callq _builder_pipeline_compile_ffi
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rsi, %r12
	movq -32(%rbp), %rsi
	movq %rdx, %rdi
	callq _donna_list_append
	movq %r14, %rcx
	movq %r12, %rsi
	movq %rax, %r14
	movq %rsi, %r12
	movq -40(%rbp), %rsi
	movq %rcx, %rdi
	callq _donna_list_append
	movq %r15, %r8
	movq %r12, %rsi
	movq %rax, %r15
	movq -48(%rbp), %r12
	movq %r8, %rdi
	callq _donna_list_append
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rax, %r8
	movq -56(%rbp), %rdi
	callq _cli_cmd_build_compile_deps
	movq %r12, %rcx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb42
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r14
	movq 16(%rax), %rdx
	movq %rdx, -64(%rbp)
	movq 24(%rax), %r13
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb39
	movq %r13, (%rax)
	jmp Lbb41
Lbb39:
	movq $1, (%rax)
	movl $1, %r13d
Lbb41:
	movl $32, %edi
	callq _malloc
	movq %rax, %rdi
	movq -64(%rbp), %rax
	movq %r15, (%rdi)
	movq %r14, 8(%rdi)
	movq %rax, 16(%rdi)
	movq %r13, 24(%rdi)
	callq _donna_result_Ok
	movq %rax, (%r12)
	jmp Lbb43
Lbb42:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
Lbb43:
	movq %rax, (%rbx)
	jmp Lbb47
Lbb44:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb47
Lbb45:
	movq %r8, %r13
	movq %r15, %r12
	movq %r14, %rbx
	movl $32, %edi
	callq _malloc
	movq %r13, %r8
	movq %r12, %rcx
	movq %rbx, %rdx
	movq %rax, %rdi
	movq %rdx, (%rdi)
	movq %rcx, 8(%rdi)
	movq %r8, 16(%rdi)
	movq $0, 24(%rdi)
	callq _donna_result_Ok
Lbb47:
	movq %rbp, %rsp
	subq $112, %rsp
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
_cli_cmd_build_has_public_main:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb53
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq _cli_cmd_build_iface_has_main
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb51
	callq _cli_cmd_build_has_public_main
	movq %rax, (%rbx)
	jmp Lbb54
Lbb51:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb54
Lbb53:
	movl $0, %eax
Lbb54:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_has_public_main */

.text
.balign 16
_cli_cmd_build_iface_has_main:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 8(%rdi), %rdi
	callq _cli_cmd_build_bindings_have_main
	leave
	ret
/* end function cli_cmd_build_iface_has_main */

.text
.balign 16
_cli_cmd_build_bindings_have_main:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb62
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	leaq _str318(%rip), %rsi
	callq _donna_string_equal
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb60
	callq _cli_cmd_build_bindings_have_main
	movq %rax, (%rbx)
	jmp Lbb63
Lbb60:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb63
Lbb62:
	movl $0, %eax
Lbb63:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_bindings_have_main */

.text
.balign 16
_cli_cmd_build_linker_flags:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str328(%rip), %rdi
	callq _donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb66
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	leaq _str340(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb67
Lbb66:
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	leaq _str336(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb67:
	leave
	ret
/* end function cli_cmd_build_linker_flags */

.text
.balign 16
_cli_cmd_build_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb76
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb72
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb73
Lbb72:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str364(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb73:
	cmpl $0, %eax
	jnz Lbb75
	movq 16(%rdi), %rdi
	callq _cli_cmd_build_first_positional
	jmp Lbb77
Lbb75:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb77
Lbb76:
	leaq _str351(%rip), %rax
Lbb77:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_first_positional */

.text
.balign 16
___rt_str_concat:
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
	callq _strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq _strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq _malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq _strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

