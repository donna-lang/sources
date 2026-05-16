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
_str70:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str99:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str142:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
_str150:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str159:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
_str161:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
_str166:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str178:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
_str180:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str182:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str185:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
_str187:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str189:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str209:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str213:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str215:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str328:
	.ascii "main"
	.byte 0
/* end data */

.data
.balign 8
_str338:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str346:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
_str350:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
_str355:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str363:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
_str365:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str375:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str388:
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
	subq $136, %rsp
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
	jnz Lbb34
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %rdi
	movq %rdi, -40(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -80(%rbp)
	movq 24(%rax), %r8
	movq %r8, -32(%rbp)
	movq %r15, %rdi
	callq _builder_scanner_project_src_dir
	movq %r12, %rcx
	movq %rbx, %rdx
	movq %rax, %rdi
	movq -32(%rbp), %r8
	movq -40(%rbp), %rbx
	leaq _str70(%rip), %rsi
	callq _builder_pipeline_compile_dir
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb33
	movq 8(%rax), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	movq 8(%rax), %rsi
	movq %rsi, -48(%rbp)
	callq _cli_cmd_build_has_public_main
	movq %r12, %rdi
	movq -48(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz Lbb30
	callq _donna_list_append
	movq %rax, -56(%rbp)
	callq _builder_pipeline_qbe_available
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -72(%rbp)
	cmpq $0, %rax
	jz Lbb27
	callq _builder_pipeline_c_compiler_available
	movq %r14, %rdi
	movq -72(%rbp), %rcx
	movq %rdi, %r14
	movq -56(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -96(%rbp)
	cmpq $0, %rax
	jz Lbb24
	callq _builder_pipeline_run_qbe_all_checked
	movq %r15, %rdi
	movq -96(%rbp), %rdx
	movq -72(%rbp), %rcx
	subq $16, %rsp
	movq %rsp, %r15
	movq %r15, -104(%rbp)
	movq (%rax), %rsi
	cmpq $1, %rsi
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb21
	movq 8(%rax), %rax
	movq %rax, -88(%rbp)
	callq _builder_scanner_project_name
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rdi, %r14
	callq _donna_files_join
	movq %rax, %r14
	callq _cli_cmd_build_linker_flags
	movq %r14, %rdi
	movq %rax, -64(%rbp)
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, %r14
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%r14)
	movq %rdi, %r15
	movl $24, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq %r14, %rax
	movq %r13, %r15
	movq -72(%rbp), %r13
	movq %rdi, %r14
	movq -64(%rbp), %rdi
	movq $1, (%rsi)
	leaq _str142(%rip), %rcx
	movq %rcx, 8(%rsi)
	movq %rax, 16(%rsi)
	callq _donna_list_append
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rdi, %r14
	movq -80(%rbp), %rdi
	callq _donna_list_append
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rdi, %r14
	movq -88(%rbp), %rdi
	callq _donna_list_append
	movq %rax, %rdi
	callq _builder_pipeline_c_command
	movq %rax, %rdi
	leaq _str150(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _donna_shell_run
	movq %r14, %rdi
	movq %rax, %rcx
	movq -104(%rbp), %rax
	movq -96(%rbp), %r14
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -120(%rbp)
	cmpq $0, %rcx
	jz Lbb18
	callq _cli_cmd_build_maybe_codesign
	callq _donna_time_now_us
	movq %rax, %rcx
	movq %r15, %rax
	movq -104(%rbp), %r15
	movq %rcx, %rsi
	subq %rax, %rsi
	leaq _str166(%rip), %rdi
	callq _utilities_logger_ok
	movl $16, %edi
	callq _malloc
	movq -120(%rbp), %rcx
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rcx)
	jmp Lbb20
Lbb18:
	movq %rax, %r15
	leaq _str159(%rip), %rdi
	callq _utilities_colors_red
	movq %rax, %rdi
	leaq _str161(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, -112(%rbp)
	movl $16, %edi
	callq _malloc
	movq -120(%rbp), %rcx
	movq -112(%rbp), %rdx
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %rax, (%rcx)
Lbb20:
	movq %rax, (%r15)
	jmp Lbb23
Lbb21:
	movq %rdx, %r14
	movq %rcx, %r13
	movq 8(%rax), %rcx
	movq %rcx, -128(%rbp)
	movl $16, %edi
	callq _malloc
	movq -128(%rbp), %rcx
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rax, (%r15)
Lbb23:
	movq %rax, (%r14)
	jmp Lbb26
Lbb24:
	movq %rdx, %r14
	movq %rcx, %r13
	callq _cli_cmd_build_c_compiler_missing_error
	movq %rax, %r15
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
Lbb26:
	movq %rax, (%r13)
	jmp Lbb29
Lbb27:
	movq %rcx, %r13
	callq _cli_cmd_build_qbe_missing_error
	movq %rax, %r14
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
Lbb29:
	movq %rax, (%r12)
	jmp Lbb32
Lbb30:
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
	leaq _str99(%rip), %rdi
	callq _utilities_logger_ok
	movl $16, %edi
	callq _malloc
	movq $0, (%rax)
	movq $0, 8(%rax)
	movq %rax, (%r12)
Lbb32:
	movq %rax, (%rbx)
	jmp Lbb35
Lbb33:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb35
Lbb34:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb35:
	movq %rbp, %rsp
	subq $176, %rsp
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
	leaq _str178(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, %rbx
	leaq _str180(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str182(%rip), %rsi
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
	leaq _str185(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, %rbx
	leaq _str187(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str189(%rip), %rsi
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
	jz Lbb51
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, -48(%rbp)
	leaq _str209(%rip), %rsi
	movq %r12, %rdi
	callq _donna_files_join
	movq %rax, %rdi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq _builder_dependencies_dep_name
	movq %r13, %rdi
	movq %rax, %rsi
	callq _donna_files_join
	movq %rax, %rdi
	movq %rdi, -8(%rbp)
	leaq _str213(%rip), %rsi
	callq _donna_files_join
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %r13
	leaq _str215(%rip), %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _donna_files_join
	movq %rax, %rdi
	callq _donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq -8(%rbp), %rdi
	callq _donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq %r13, %rdi
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
	movq %r13, %rdx
	callq _builder_pipeline_compile_dir
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
	jnz Lbb50
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
	callq _builder_dependencies_dep_path
	movq %rbx, %rsi
	movq %rax, %rdi
	movq -32(%rbp), %rbx
	callq _builder_pipeline_compile_ffi
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, -80(%rbp)
	movq %rsi, %r13
	movq -40(%rbp), %rsi
	movq -48(%rbp), %rdi
	movq %rdi, %r12
	movq %rdx, %rdi
	callq _donna_list_append
	movq %r15, %rcx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, -72(%rbp)
	movq -56(%rbp), %r15
	movq %rsi, %r13
	movq -64(%rbp), %rsi
	movq %rdi, %r12
	movq %rcx, %rdi
	callq _donna_list_append
	movq %r14, %r8
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, -88(%rbp)
	movq -72(%rbp), %r14
	movq %rsi, %r13
	movq -80(%rbp), %rsi
	movq %rdi, %r12
	movq %r8, %rdi
	callq _donna_list_append
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r8
	movq %rcx, %r12
	movq -88(%rbp), %rcx
	callq _cli_cmd_build_compile_deps
	movq %r12, %rcx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb48
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r15
	movq 16(%rax), %rdx
	movq %rdx, -96(%rbp)
	movq 24(%rax), %r14
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb45
	movq %r14, (%rax)
	jmp Lbb47
Lbb45:
	movq $1, (%rax)
	movl $1, %r14d
Lbb47:
	movl $32, %edi
	callq _malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq -96(%rbp), %rax
	movq %rcx, (%r13)
	movq %r15, 8(%r13)
	movq %rax, 16(%r13)
	movq %r14, 24(%r13)
	movl $16, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp Lbb49
Lbb48:
	movq 8(%rax), %r13
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
Lbb49:
	movq %rax, (%rbx)
	jmp Lbb53
Lbb50:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb53
Lbb51:
	movq %r8, %r13
	movq %r15, %r12
	movq %r14, %rbx
	movl $32, %edi
	callq _malloc
	movq %r13, %r8
	movq %r12, %rcx
	movq %rbx, %rdx
	movq %rax, %rbx
	movq %rdx, (%rbx)
	movq %rcx, 8(%rbx)
	movq %r8, 16(%rbx)
	movq $0, 24(%rbx)
	movl $16, %edi
	callq _malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
Lbb53:
	movq %rbp, %rsp
	subq $144, %rsp
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
	jz Lbb59
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq _cli_cmd_build_iface_has_main
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb57
	callq _cli_cmd_build_has_public_main
	movq %rax, (%rbx)
	jmp Lbb60
Lbb57:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb60
Lbb59:
	movl $0, %eax
Lbb60:
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
	jz Lbb68
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	leaq _str328(%rip), %rsi
	callq _donna_string_equal
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb66
	callq _cli_cmd_build_bindings_have_main
	movq %rax, (%rbx)
	jmp Lbb69
Lbb66:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb69
Lbb68:
	movl $0, %eax
Lbb69:
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
	leaq _str338(%rip), %rdi
	callq _donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb72
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	leaq _str350(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb73
Lbb72:
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	leaq _str346(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb73:
	leave
	ret
/* end function cli_cmd_build_linker_flags */

.text
.balign 16
_cli_cmd_build_maybe_codesign:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq _str355(%rip), %rdi
	callq _donna_shell_run
	movq %rbx, %rsi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $0, %rax
	jz Lbb76
	leaq _str363(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str365(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _donna_shell_run
	jmp Lbb77
Lbb76:
	movl $0, %eax
Lbb77:
	popq %rbx
	leave
	ret
/* end function cli_cmd_build_maybe_codesign */

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
	jz Lbb86
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb82
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb83
Lbb82:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str388(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb83:
	cmpl $0, %eax
	jnz Lbb85
	movq 16(%rdi), %rdi
	callq _cli_cmd_build_first_positional
	jmp Lbb87
Lbb85:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb87
Lbb86:
	leaq _str375(%rip), %rax
Lbb87:
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

