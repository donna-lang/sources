.data
.balign 8
_str0:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
_str8:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
_str30:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str32:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str41:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
_str49:
	.ascii "no test/ directory in "
	.byte 0
/* end data */

.data
.balign 8
_str60:
	.ascii "no .donna test files found in "
	.byte 0
/* end data */

.data
.balign 8
_str70:
	.ascii "test_runner.donna"
	.byte 0
/* end data */

.data
.balign 8
_str76:
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
_str106:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str124:
	.ascii "scrubbed"
	.byte 0
/* end data */

.data
.balign 8
_str155:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str158:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
_str177:
	.ascii "test_runner.ssa"
	.byte 0
/* end data */

.data
.balign 8
_str180:
	.ascii "test_runner"
	.byte 0
/* end data */

.data
.balign 8
_str222:
	.ascii "donna_test_runner"
	.byte 0
/* end data */

.data
.balign 8
_str229:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
_str237:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str246:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str248:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
_str250:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
_str252:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str255:
	.ascii "  Running tests..."
	.byte 0
/* end data */

.data
.balign 8
_str257:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str266:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str267:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str277:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
_str279:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str281:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str284:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
_str286:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str288:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str292:
	.ascii "donna_stdlib"
	.byte 0
/* end data */

.data
.balign 8
_str302:
	.ascii "self_alias_artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str305:
	.ascii "donna"
	.byte 0
/* end data */

.data
.balign 8
_str347:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str351:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str353:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str431:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str447:
	.ascii "only"
	.byte 0
/* end data */

.data
.balign 8
_str455:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str480:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str514:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str522:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
_str526:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
_str543:
	.ascii "export function w $main("
	.byte 0
/* end data */

.data
.balign 8
_str544:
	.ascii "function w $__proj_main("
	.byte 0
/* end data */

.data
.balign 8
_str546:
	.ascii "export function w $donna_program_main("
	.byte 0
/* end data */

.data
.balign 8
_str547:
	.ascii "function w $__proj_main("
	.byte 0
/* end data */

.text
.balign 16
.globl _cli_cmd_test_run
_cli_cmd_test_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	leaq _str0(%rip), %rsi
	movq %rdi, %rbx
	callq _argparse_argparse_has
	movq %rbx, %rdi
	cmpq $1, %rax
	jz Lbb7
	leaq _str8(%rip), %rsi
	movq %rdi, %rbx
	callq _argparse_argparse_has
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb6
	callq _cli_cmd_test_parse_test_args
	movq (%rax), %rdi
	movq 8(%rax), %r13
	movq %rdi, %r12
	callq _builder_scanner_scan
	movq %r13, %rdx
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb4
	movq 8(%rax), %rsi
	callq _cli_cmd_test_do_test
	movq %rax, (%r12)
	jmp Lbb5
Lbb4:
	movq 8(%rax), %r13
	leaq _str30(%rip), %rdi
	callq _utilities_colors_red
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str32(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, (%r12)
Lbb5:
	movq %rax, (%rbx)
	jmp Lbb8
Lbb6:
	callq _cli_help_test_help
	movq %rax, (%rbx)
	jmp Lbb8
Lbb7:
	callq _cli_help_test_help
Lbb8:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_run */

.text
.balign 16
_cli_cmd_test_do_test:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r12
	movq %rdx, %rsi
	movq %rdi, %rbx
	movq %rsi, %r14
	leaq _str41(%rip), %rsi
	movq %rbx, %rdi
	callq _donna_files_join
	movq %rax, %rdi
	movq %rdi, %r13
	callq _donna_files_is_dir
	movq %r13, %rdi
	cmpq $0, %rax
	jz Lbb14
	movq %rdi, %r13
	callq _cli_cmd_test_find_donna_files
	movq %r13, %rdi
	movq %rax, %r13
	movq %rdi, %r15
	movq %r13, %rdi
	callq _donna_list_is_empty
	movq %r15, %rdi
	subq $16, %rsp
	movq %rsp, %r15
	movq %r15, -24(%rbp)
	cmpq $1, %rax
	jz Lbb12
	movq %r13, %rdi
	callq _builder_tester_collect_test_modules
	movq %r14, %rsi
	movq %rax, %r14
	movq %r14, %rdi
	callq _builder_tester_generate_filtered_runner
	movq %rax, -16(%rbp)
	movq %r12, %rdi
	callq _builder_scanner_project_build_dir
	movq %rax, %rdi
	movq %rdi, %r15
	movq %r12, %rdi
	callq _builder_scanner_project_test_dir
	movq %r15, %rdi
	movq %rax, %r15
	callq _donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq _donna_files_mkdir
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rsi, %r12
	leaq _str70(%rip), %rsi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq _donna_files_join
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r8
	movq %rsi, %r12
	movq -16(%rbp), %rsi
	movq %r8, -32(%rbp)
	movq %rdi, %rbx
	movq %r8, %rdi
	callq _donna_files_write
	movq %r15, %r9
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq -24(%rbp), %rbx
	movq -32(%rbp), %r8
	callq _cli_cmd_test_build_and_run
	movq %rax, (%rbx)
	jmp Lbb16
Lbb12:
	movq %r15, %rbx
	movq %rdi, %r12
	leaq _str60(%rip), %rdi
	callq _utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %r12
	callq _utilities_colors_path
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb16
Lbb14:
	movq %rbx, %rdi
	movq %rdi, %rbx
	leaq _str49(%rip), %rdi
	callq _utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _utilities_colors_path
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
Lbb16:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_do_test */

.text
.balign 16
_cli_cmd_test_build_and_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $248, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r9, %r15
	movq %r8, -80(%rbp)
	movq %rdx, -88(%rbp)
	movq %rsi, %rbx
	movq %rdi, %r12
	leaq _str76(%rip), %rsi
	movq %r12, %rdi
	callq _donna_files_join
	movq %rax, %rdi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq _builder_scanner_project_build_dir
	movq %r13, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %r13
	movq %rbx, %rdi
	callq _builder_scanner_project_dev_artifacts_dir
	movq %r13, %rdi
	movq %rax, %r14
	movq %rdi, %r13
	movq %rbx, %rdi
	callq _builder_scanner_project_dev_dir
	movq %rax, %rdi
	callq _donna_files_mkdir
	movq %r13, %rdi
	movq %rdi, %r13
	movq %r14, %rdi
	callq _donna_files_mkdir
	movq %r13, %rdi
	movq %r12, %rsi
	movq %rdi, %r13
	callq _builder_dependencies_resolve_deps
	movq %r13, %rdi
	movq %rax, -24(%rbp)
	movq -16(%rbp), %rsi
	movq %rsi, %r13
	movq %r12, %rsi
	callq _builder_dependencies_resolve_dev_deps
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, -56(%rbp)
	movq -24(%rbp), %r12
	movq %rsi, %r13
	movq %r14, %rsi
	callq _builder_pipeline_compile_ffi
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r8
	leaq _donna_nil(%rip), %rcx
	movq %rdx, %r12
	leaq _donna_nil(%rip), %rdx
	movq %rsi, %r13
	callq _cli_cmd_test_compile_deps
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb45
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq 8(%rax), %rcx
	movq %rcx, -152(%rbp)
	movq 16(%rax), %rbx
	movq %rbx, -168(%rbp)
	movq 24(%rax), %r8
	movq %r8, -32(%rbp)
	movq %rdi, %rbx
	callq _builder_scanner_project_src_dir
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rax, %rsi
	movq -32(%rbp), %r8
	movq %r14, %rcx
	movq %rsi, %r12
	leaq _str106(%rip), %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _builder_pipeline_compile_dir
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -64(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb44
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq %rcx, -72(%rbp)
	movq 8(%rax), %rax
	movq %rax, -40(%rbp)
	movq %rsi, %r12
	leaq _str124(%rip), %rsi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq _donna_files_join
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, -48(%rbp)
	movq %rdi, %rbx
	movq %rsi, %rdi
	callq _donna_files_mkdir
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rsi, %r12
	movq -48(%rbp), %rsi
	movq %rdi, %rbx
	movq -40(%rbp), %rdi
	leaq _donna_nil(%rip), %rdx
	callq _cli_cmd_test_scrub_main_from_ssa
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, -144(%rbp)
	movq -64(%rbp), %rbx
	movq -56(%rbp), %r12
	movq %r14, %rcx
	movq %r15, %rdx
	callq _cli_cmd_test_compile_self_alias
	movq %r13, %rsi
	movq -72(%rbp), %rdi
	movq %rsi, %r13
	movq (%rax), %rsi
	movq 8(%rax), %rax
	movq %rax, -136(%rbp)
	callq _donna_list_append
	movq %r14, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	leaq _donna_nil(%rip), %r8
	leaq _donna_nil(%rip), %rcx
	movq %r12, %rdx
	callq _cli_cmd_test_compile_deps
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb42
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq 8(%rax), %rcx
	movq %rcx, -128(%rbp)
	movq 16(%rax), %r13
	movq %r13, -176(%rbp)
	callq _donna_list_append
	movq %rax, %rdi
	leaq _str155(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq _donna_files_join
	movq %r13, %rdi
	movq %rax, %r14
	movq %rdi, %r13
	movq %r14, %rdi
	callq _donna_files_mkdir
	movq %r14, %rdx
	movq %r13, %rdi
	movq -80(%rbp), %r14
	movq %rdi, %r13
	movq -88(%rbp), %rdi
	movq %r13, %rcx
	leaq _str158(%rip), %rsi
	callq _builder_pipeline_compile_file_list
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb40
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq 8(%rax), %rax
	movq %rax, -104(%rbp)
	callq _donna_list_append
	movq %r14, %rdi
	movq %rax, -96(%rbp)
	leaq _str177(%rip), %rsi
	movq %rdi, %r14
	movq %r15, %rdi
	callq _donna_files_join
	movq %rax, %rdi
	callq _donna_files_delete
	movq %r14, %rdi
	movq -96(%rbp), %rcx
	movq -104(%rbp), %r14
	movl $1, %r8d
	movq %r15, %rdx
	leaq _str180(%rip), %rsi
	callq _builder_pipeline_compile_module
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -192(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb38
	movq 8(%rax), %rax
	movq 8(%rax), %rax
	movq %rax, -120(%rbp)
	callq _donna_list_reverse
	movq %r15, %rdi
	movq %rax, -112(%rbp)
	movq %rdi, %r15
	movl $24, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -112(%rbp), %rdi
	movq -120(%rbp), %rax
	movq $1, (%rsi)
	movq %rax, 8(%rsi)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	callq _donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -128(%rbp), %rdi
	callq _donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -136(%rbp), %rdi
	callq _donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -144(%rbp), %rdi
	callq _donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -152(%rbp), %rdi
	callq _donna_list_append
	movq %rax, -160(%rbp)
	callq _builder_pipeline_qbe_available
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -216(%rbp)
	cmpq $0, %rcx
	jz Lbb35
	callq _builder_pipeline_c_compiler_available
	movq %rax, %rdx
	movq -216(%rbp), %rax
	movq -160(%rbp), %rdi
	movq %rdi, %rcx
	movq -168(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rsi, -240(%rbp)
	cmpq $0, %rdx
	jz Lbb32
	movq %rdi, %r14
	movq %rcx, %rdi
	leaq _donna_nil(%rip), %rsi
	callq _builder_pipeline_run_qbe_all
	movq %r15, %rdi
	movq %rax, -208(%rbp)
	movq -176(%rbp), %rsi
	movq %rsi, %r15
	leaq _str222(%rip), %rsi
	callq _donna_files_join
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %r14
	callq _donna_list_append
	movq %rax, -200(%rbp)
	callq _cli_cmd_test_linker_flags
	movq %r14, %rdi
	movq %rax, -184(%rbp)
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
	movq -192(%rbp), %r14
	movq %rdi, %r15
	movq -184(%rbp), %rdi
	movq $1, (%rsi)
	leaq _str229(%rip), %rcx
	movq %rcx, 8(%rsi)
	movq %rax, 16(%rsi)
	callq _donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -200(%rbp), %rdi
	callq _donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -208(%rbp), %rdi
	callq _donna_list_append
	movq %rax, %rdi
	callq _builder_pipeline_c_command
	movq %rax, %rdi
	leaq _str237(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _donna_shell_run
	movq %r15, %rdi
	movq -216(%rbp), %r15
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -232(%rbp)
	cmpq $0, %rax
	jz Lbb30
	movq %rdi, %rsi
	movq %rdi, %r15
	leaq _str250(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str252(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _donna_shell_run
	movq %r15, %rdi
	movq %rdi, %r15
	leaq _str255(%rip), %rdi
	callq _utilities_colors_dim
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	leaq _str257(%rip), %rdi
	movl $0, %eax
	callq _printf
	callq _donna_shell_flush
	movq %r15, %rdi
	movq -216(%rbp), %r15
	leaq _donna_nil(%rip), %rsi
	callq _donna_shell_exec
	movq %rax, %rdi
	movq -232(%rbp), %rdx
	movq -240(%rbp), %rcx
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rsi, -224(%rbp)
	cmpq $1, %rax
	jz Lbb28
	callq _exit
	movq -224(%rbp), %rsi
	movq -232(%rbp), %rdx
	movq -240(%rbp), %rcx
	leaq _str267(%rip), %rax
	movq %rax, (%rsi)
	leaq _str267(%rip), %rax
	jmp Lbb29
Lbb28:
	leaq _str266(%rip), %rax
	movq %rax, (%rsi)
	leaq _str266(%rip), %rax
Lbb29:
	movq %rax, (%rdx)
	jmp Lbb31
Lbb30:
	leaq _str246(%rip), %rdi
	callq _utilities_colors_red
	movq %rax, %rdi
	leaq _str248(%rip), %rsi
	callq ___rt_str_concat
	movq -232(%rbp), %rdx
	movq -240(%rbp), %rcx
	movq %rax, (%rdx)
Lbb31:
	movq %rax, (%rcx)
	jmp Lbb34
Lbb32:
	movq %rax, %r15
	callq _cli_cmd_test_c_compiler_missing_error
	movq -240(%rbp), %rcx
	movq %rax, (%rcx)
Lbb34:
	movq %rax, (%r15)
	jmp Lbb37
Lbb35:
	movq %rax, %r15
	callq _cli_cmd_test_qbe_missing_error
	movq %rax, (%r15)
Lbb37:
	movq %rax, (%r14)
	jmp Lbb39
Lbb38:
	movq 8(%rax), %rax
	movq %rax, (%r14)
Lbb39:
	movq %rax, (%r13)
	jmp Lbb41
Lbb40:
	movq 8(%rax), %rax
	movq %rax, (%r13)
Lbb41:
	movq %rax, (%r12)
	jmp Lbb43
Lbb42:
	movq 8(%rax), %rax
	movq %rax, (%r12)
Lbb43:
	movq %rax, (%rbx)
	jmp Lbb46
Lbb44:
	movq 8(%rax), %rax
	movq %rax, (%rbx)
	jmp Lbb46
Lbb45:
	movq 8(%rax), %rax
Lbb46:
	movq %rbp, %rsp
	subq $288, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_build_and_run */

.text
.balign 16
_cli_cmd_test_qbe_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _str277(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, %rbx
	leaq _str279(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str281(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_qbe_missing_error */

.text
.balign 16
_cli_cmd_test_c_compiler_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _str284(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, %rbx
	leaq _str286(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str288(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_c_compiler_missing_error */

.text
.balign 16
_cli_cmd_test_compile_self_alias:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rcx, %r13
	movq %rdx, %r12
	movq %rsi, %rbx
	callq _builder_scanner_project_name
	movq %rax, %rdi
	leaq _str292(%rip), %rsi
	callq _donna_string_equal
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb55
	leaq _str302(%rip), %rsi
	callq _donna_files_join
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _donna_files_mkdir
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movl $0, %r8d
	leaq _str305(%rip), %rsi
	callq _builder_pipeline_compile_dir
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb54
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb56
Lbb54:
	movl $16, %edi
	callq _malloc
	leaq _donna_nil(%rip), %rcx
	movq %rcx, (%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb56
Lbb55:
	movl $16, %edi
	callq _malloc
	leaq _donna_nil(%rip), %rcx
	movq %rcx, (%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
Lbb56:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_compile_self_alias */

.text
.balign 16
_cli_cmd_test_compile_deps:
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
	jz Lbb68
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, -48(%rbp)
	leaq _str347(%rip), %rsi
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
	leaq _str351(%rip), %rsi
	callq _donna_files_join
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %r13
	leaq _str353(%rip), %rsi
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
	jnz Lbb67
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
	callq _cli_cmd_test_compile_deps
	movq %r12, %rcx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb65
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r14
	movq 16(%rax), %rdx
	movq %rdx, -96(%rbp)
	movq 24(%rax), %r13
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb62
	movq %r13, (%rax)
	jmp Lbb64
Lbb62:
	movq $1, (%rax)
	movl $1, %r13d
Lbb64:
	movl $32, %edi
	callq _malloc
	movq %rax, %rdi
	movq -96(%rbp), %rax
	movq %r15, (%rdi)
	movq %r14, 8(%rdi)
	movq %rax, 16(%rdi)
	movq %r13, 24(%rdi)
	callq _donna_result_Ok
	movq %rax, (%r12)
	jmp Lbb66
Lbb65:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
Lbb66:
	movq %rax, (%rbx)
	jmp Lbb70
Lbb67:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb70
Lbb68:
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
Lbb70:
	movq %rbp, %rsp
	subq $144, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_compile_deps */

.text
.balign 16
_cli_cmd_test_find_donna_files:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq _donna_files_list_dir
	movq %rbx, %rsi
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rdx
	callq _cli_cmd_test_collect_donna
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_find_donna_files */

.text
.balign 16
_cli_cmd_test_collect_donna:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb78
	movq 8(%rdi), %r13
	movq 16(%rdi), %rdi
	movq %rsi, %r14
	leaq _str431(%rip), %rsi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_string_ends_with
	movq %r14, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb76
	movq %r12, %rdx
	movq %rsi, %r15
	callq _cli_cmd_test_collect_donna
	movq %rax, (%rbx)
	jmp Lbb80
Lbb76:
	movq %rsi, %r15
	movq %r13, %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq _donna_files_join
	movq %r13, %rdi
	movq %rax, %r13
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq _cli_cmd_test_collect_donna
	movq %rax, (%rbx)
	jmp Lbb80
Lbb78:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb80:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_collect_donna */

.text
.balign 16
_cli_cmd_test_parse_test_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx
	callq _argparse_argparse_positional
	movq %rbx, %rdi
	movq %rax, %r12
	leaq _str447(%rip), %rsi
	callq _argparse_argparse_get
	movq %rax, %rbx
	movq (%r12), %rax
	cmpq $0, %rax
	jz Lbb86
	movq 8(%r12), %r13
	movq 16(%r12), %r15
	movq %r13, %rdi
	callq _donna_files_is_dir
	movq %rbx, %r14
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb84
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r14, 8(%rdi)
	movq %r12, 16(%rdi)
	leaq _donna_nil(%rip), %rsi
	callq _cli_cmd_test_filter_values
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	leaq _str480(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb87
Lbb84:
	movq %r15, %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r14, 8(%rdi)
	movq %r12, 16(%rdi)
	leaq _donna_nil(%rip), %rsi
	callq _cli_cmd_test_filter_values
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb87
Lbb86:
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	leaq _donna_nil(%rip), %rsi
	callq _cli_cmd_test_filter_values
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	leaq _str455(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
Lbb87:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_parse_test_args */

.text
.balign 16
_cli_cmd_test_filter_values:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb92
	movq 8(%rdi), %r13
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_string_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb91
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq _cli_cmd_test_filter_values
	movq %rax, (%rbx)
	jmp Lbb94
Lbb91:
	movq %r12, %rsi
	callq _cli_cmd_test_filter_values
	movq %rax, (%rbx)
	jmp Lbb94
Lbb92:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb94:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_filter_values */

.text
.balign 16
_cli_cmd_test_linker_flags:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str514(%rip), %rdi
	callq _donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb97
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	leaq _str526(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb98
Lbb97:
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	leaq _str522(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb98:
	leave
	ret
/* end function cli_cmd_test_linker_flags */

.text
.balign 16
_cli_cmd_test_scrub_main_from_ssa:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %rbx
	movq %rsi, %r14
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb101
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %r13
	callq _donna_files_read
	movq %rax, %rdi
	leaq _str544(%rip), %rdx
	leaq _str543(%rip), %rsi
	callq _donna_string_replace
	movq %rax, %rdi
	leaq _str547(%rip), %rdx
	leaq _str546(%rip), %rsi
	callq _donna_string_replace
	movq %r13, %rdi
	movq %rax, %r13
	callq _donna_files_basename
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	movq %r14, %rdi
	callq _donna_files_join
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movq %r12, %rdi
	callq _donna_files_write
	movq %r13, %rdi
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq _cli_cmd_test_scrub_main_from_ssa
	jmp Lbb103
Lbb101:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb103:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_scrub_main_from_ssa */

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

