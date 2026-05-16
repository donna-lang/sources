.data
.balign 8
str0:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
str8:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
str30:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str32:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str41:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str49:
	.ascii "no test/ directory in "
	.byte 0
/* end data */

.data
.balign 8
str60:
	.ascii "no .donna test files found in "
	.byte 0
/* end data */

.data
.balign 8
str86:
	.ascii "test_runner.donna"
	.byte 0
/* end data */

.data
.balign 8
str94:
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
str124:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str142:
	.ascii "scrubbed"
	.byte 0
/* end data */

.data
.balign 8
str173:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str176:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str195:
	.ascii "test_runner.ssa"
	.byte 0
/* end data */

.data
.balign 8
str198:
	.ascii "test_runner"
	.byte 0
/* end data */

.data
.balign 8
str250:
	.ascii "donna_test_runner"
	.byte 0
/* end data */

.data
.balign 8
str257:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str265:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str274:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str276:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
str279:
	.ascii "  Running tests..."
	.byte 0
/* end data */

.data
.balign 8
str281:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str290:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str291:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str302:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str304:
	.ascii ": invalid test function name"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str306:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str315:
	.ascii "  hint: public test functions must end with `_test`"
	.byte 0
/* end data */

.data
.balign 8
str322:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str326:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str330:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str332:
	.ascii ": no test functions found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str334:
	.ascii "  hint: add a public function named like `example_test` in test/"
	.byte 0
/* end data */

.data
.balign 8
str337:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
str339:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str341:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str344:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
str346:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str348:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str352:
	.ascii "donna_stdlib"
	.byte 0
/* end data */

.data
.balign 8
str362:
	.ascii "self_alias_artifacts"
	.byte 0
/* end data */

.data
.balign 8
str365:
	.ascii "donna"
	.byte 0
/* end data */

.data
.balign 8
str408:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str412:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str414:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str495:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str511:
	.ascii "only"
	.byte 0
/* end data */

.data
.balign 8
str519:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str544:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str578:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str586:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str590:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
str595:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str603:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
str605:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str621:
	.ascii "$main("
	.byte 0
/* end data */

.data
.balign 8
str623:
	.ascii "$donna_program_main("
	.byte 0
/* end data */

.data
.balign 8
str631:
	.ascii "export function w $main("
	.byte 0
/* end data */

.data
.balign 8
str632:
	.ascii "function w $__proj_main("
	.byte 0
/* end data */

.data
.balign 8
str634:
	.ascii "export function w $donna_program_main("
	.byte 0
/* end data */

.data
.balign 8
str635:
	.ascii "function w $__proj_main("
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_test_run
cli_cmd_test_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str0(%rip), %rdx
	movq %rcx, %rsi
	callq argparse_argparse_has
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb7
	subq $32, %rsp
	leaq str8(%rip), %rdx
	movq %rcx, %rsi
	callq argparse_argparse_has
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb6
	subq $32, %rsp
	callq cli_cmd_test_parse_test_args
	subq $-32, %rsp
	movq (%rax), %rcx
	movq 8(%rax), %rbx
	subq $32, %rsp
	movq %rcx, %rdi
	callq builder_scanner_scan
	movq %rbx, %r8
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb4
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq cli_cmd_test_do_test
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb5
Lbb4:
	movq 8(%rax), %rbx
	subq $32, %rsp
	leaq str30(%rip), %rcx
	callq utilities_colors_red
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str32(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb5:
	movq %rax, (%rsi)
	jmp Lbb8
Lbb6:
	subq $32, %rsp
	callq cli_help_test_help
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb8
Lbb7:
	subq $32, %rsp
	callq cli_help_test_help
	subq $-32, %rsp
Lbb8:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_run */

.text
.balign 16
cli_cmd_test_do_test:
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
	movq %rdx, %rbx
	movq %r8, %rdx
	subq $32, %rsp
	movq %rdx, %r13
	leaq str41(%rip), %rdx
	movq %rcx, %rsi
	callq donna_files_join
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_files_is_dir
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb22
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq cli_cmd_test_find_donna_files
	movq %rsi, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r14, %rcx
	callq donna_list_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb20
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r14, %rcx
	callq builder_tester_collect_test_modules
	movq %rdi, %rcx
	movq %rax, %r15
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r14, %rcx
	callq builder_tester_collect_invalid_public_test_functions
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movq %rdi, %rcx
	callq donna_list_is_empty
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -16(%rbp)
	cmpq $0, %rax
	jz Lbb17
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r15, %rcx
	callq builder_tester_count_total
	movq %r13, %rdx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -8(%rbp)
	cmpq $1, %rax
	jz Lbb14
	subq $32, %rsp
	movq %r15, %rcx
	callq builder_tester_generate_filtered_runner
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rbx, %rcx
	callq builder_scanner_project_build_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %rbx, %rcx
	callq builder_scanner_project_test_dir
	movq %r13, %rcx
	movq %rax, %r13
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
	leaq str86(%rip), %rdx
	movq %rcx, %rdi
	movq %r13, %rcx
	callq donna_files_join
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r12, %rcx
	callq donna_files_write
	movq %r15, %r9
	movq %r14, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq -8(%rbp), %rbx
	movq -16(%rbp), %rdi
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq %r13, 40(%rax)
	movq %r12, 32(%rax)
	callq cli_cmd_test_build_and_run
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb16
Lbb14:
	movq %r13, %rbx
	movq %r12, %rdi
	subq $32, %rsp
	callq cli_cmd_test_no_tests_error
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb16:
	movq %rax, (%rdi)
	jmp Lbb19
Lbb17:
	movq %rdi, %rcx
	movq %r12, %rdi
	subq $32, %rsp
	callq cli_cmd_test_invalid_test_names_error
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb19:
	movq %rax, (%rsi)
	jmp Lbb23
Lbb20:
	movq %rdi, %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str60(%rip), %rcx
	callq utilities_colors_dim
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
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb23
Lbb22:
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str49(%rip), %rcx
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_path
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb23:
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
/* end function cli_cmd_test_do_test */

.text
.balign 16
cli_cmd_test_build_and_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $184, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq 56(%rbp), %r15
	movq 48(%rbp), %r12
	movq %r12, -32(%rbp)
	movq %r8, -16(%rbp)
	movq %rdx, %rsi
	movq %rcx, %rbx
	subq $32, %rsp
	leaq str94(%rip), %rdx
	movq %rbx, %rcx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq builder_scanner_project_build_dir
	movq %rdi, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq builder_scanner_project_dev_artifacts_dir
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq builder_scanner_project_dev_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r12, %rcx
	callq donna_files_mkdir
	movq %r13, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %rbx, %rdx
	movq %rcx, %rdi
	callq builder_dependencies_resolve_deps
	movq %r13, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %rbx, %rdx
	callq builder_dependencies_resolve_dev_deps
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, -24(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	movq %r12, %rdx
	callq builder_pipeline_compile_ffi
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rdi
	movq %rax, 32(%rdi)
	leaq donna_nil(%rip), %r9
	movq %r8, %rbx
	leaq donna_nil(%rip), %r8
	movq %rdx, %rdi
	callq cli_cmd_test_compile_deps
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-48, %rsp
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb54
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq 8(%rax), %rsi
	movq %rsi, -56(%rbp)
	movq %r8, %rbx
	movq 16(%rax), %r8
	movq %r8, -120(%rbp)
	movq 24(%rax), %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	callq builder_scanner_project_src_dir
	movq %rbx, %r8
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq %rsi, 32(%rax)
	movq %r14, %r9
	movq %rdx, %rdi
	leaq str124(%rip), %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq builder_pipeline_compile_dir
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdi
	cmpq $1, %rdi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb53
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq %rdi, -40(%rbp)
	movq 8(%rax), %rax
	movq %rax, -8(%rbp)
	subq $32, %rsp
	leaq str142(%rip), %rdx
	movq %rcx, %rdi
	movq %r15, %rcx
	callq donna_files_join
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq donna_files_mkdir
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rcx, %rdi
	movq -8(%rbp), %rcx
	movq -16(%rbp), %rbx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq cli_cmd_test_scrub_main_from_ssa
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, -48(%rbp)
	movq -24(%rbp), %rdi
	movq -32(%rbp), %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %r14, %r9
	movq %r15, %r8
	callq cli_cmd_test_compile_self_alias
	movq %r13, %rdx
	movq -40(%rbp), %rcx
	subq $-32, %rsp
	movq %rdx, %r13
	movq (%rax), %rdx
	movq 8(%rax), %rax
	movq %rax, -104(%rbp)
	subq $32, %rsp
	callq donna_list_append
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %r13, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %r8
	leaq donna_nil(%rip), %rax
	movq %rax, 32(%r8)
	leaq donna_nil(%rip), %r9
	movq %rdi, %r8
	callq cli_cmd_test_compile_deps
	movq %rdi, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb51
	movq 8(%rax), %rax
	movq (%rax), %rdx
	movq 8(%rax), %r8
	movq %r8, -96(%rbp)
	movq 16(%rax), %r13
	movq %r13, -112(%rbp)
	subq $32, %rsp
	callq donna_list_append
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str173(%rip), %rdx
	movq %rcx, %r13
	movq %r15, %rcx
	callq donna_files_join
	movq %r13, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %r14, %rcx
	callq donna_files_mkdir
	movq %r14, %r8
	movq %r13, %rcx
	movq -48(%rbp), %r14
	movq -56(%rbp), %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rbx, %r9
	leaq str176(%rip), %rdx
	callq builder_pipeline_compile_file_list
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb49
	movq 8(%rax), %rax
	movq (%rax), %rdx
	movq 8(%rax), %rax
	movq %rax, -72(%rbp)
	subq $32, %rsp
	callq donna_list_append
	movq %r12, %rcx
	movq %rax, -64(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	leaq str195(%rip), %rdx
	movq %rcx, %r12
	movq %r15, %rcx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_delete
	movq %r12, %rcx
	movq -64(%rbp), %r9
	movq -72(%rbp), %r12
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq $1, 32(%rax)
	movq %r15, %r8
	leaq str198(%rip), %rdx
	callq builder_pipeline_compile_module
	movq %r12, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb47
	movq 8(%rax), %rax
	movq 8(%rax), %rax
	movq %rax, -88(%rbp)
	subq $32, %rsp
	callq donna_list_reverse
	movq %r14, %rcx
	movq %rax, -80(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movl $24, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %rdx
	movq %rcx, %r14
	movq -80(%rbp), %rcx
	movq -88(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq donna_list_append
	movq %r14, %rcx
	movq %rax, %rdx
	movq %rcx, %r14
	movq -96(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %r14, %rcx
	movq %rax, %rdx
	movq %rcx, %r14
	movq -104(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_qbe_available
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $0, %rax
	jz Lbb45
	subq $32, %rsp
	callq builder_pipeline_c_compiler_available
	movq %r14, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -136(%rbp)
	cmpq $0, %rax
	jz Lbb43
	subq $32, %rsp
	callq builder_pipeline_run_qbe_all_checked
	movq %r15, %rcx
	movq -112(%rbp), %rdx
	movq -120(%rbp), %r8
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r15
	movq %r15, -160(%rbp)
	movq (%rax), %r9
	cmpq $1, %r9
	setz %r9b
	movzbq %r9b, %r9
	cmpl $0, %r9d
	jnz Lbb41
	movq %r8, %r14
	movq 8(%rax), %rax
	movq %rax, -152(%rbp)
	subq $32, %rsp
	movq %rdx, %r15
	leaq str250(%rip), %rdx
	callq donna_files_join
	movq %r15, %rdx
	movq %r14, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %rax, -144(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_test_linker_flags
	movq %r14, %rcx
	movq %rax, -128(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movl $24, %ecx
	callq malloc
	movq %r14, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rax, %r14
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r14)
	subq $32, %rsp
	movq %rcx, %r15
	movl $24, %ecx
	callq malloc
	movq %r15, %rcx
	movq %rax, %rdx
	movq %r14, %rax
	movq -136(%rbp), %r14
	movq %rcx, %r15
	movq -128(%rbp), %rcx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str257(%rip), %r8
	movq %r8, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq donna_list_append
	movq %r15, %rcx
	movq %rax, %rdx
	movq %rcx, %r15
	movq -144(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %r15, %rcx
	movq %rax, %rdx
	movq %rcx, %r15
	movq -152(%rbp), %rcx
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
	leaq str265(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	movq %r15, %rcx
	movq -160(%rbp), %r15
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -176(%rbp)
	cmpq $0, %rax
	jz Lbb39
	subq $32, %rsp
	movq %rcx, %r15
	callq cli_cmd_test_maybe_codesign
	movq %r15, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r15
	leaq str279(%rip), %rcx
	callq utilities_colors_dim
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r15
	leaq str281(%rip), %rcx
	callq printf
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_flush
	movq %r15, %rcx
	movq -160(%rbp), %r15
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq donna_shell_exec
	movq %rax, %rcx
	movq -176(%rbp), %rax
	subq $-32, %rsp
	cmpq $0, %rcx
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -168(%rbp)
	cmpq $1, %r8
	jz Lbb36
	subq $32, %rsp
	callq exit
	movq -168(%rbp), %rdx
	movq -176(%rbp), %rcx
	subq $-32, %rsp
	leaq str291(%rip), %rax
	movq %rax, (%rdx)
	leaq str291(%rip), %rax
	jmp Lbb38
Lbb36:
	movq %rax, %rcx
	leaq str290(%rip), %rax
	movq %rax, (%rdx)
	leaq str290(%rip), %rax
Lbb38:
	movq %rax, (%rcx)
	jmp Lbb40
Lbb39:
	subq $32, %rsp
	leaq str274(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str276(%rip), %rdx
	callq __rt_str_concat
	movq -176(%rbp), %rcx
	subq $-32, %rsp
	movq %rax, (%rcx)
Lbb40:
	movq %rax, (%r15)
	jmp Lbb42
Lbb41:
	movq 8(%rax), %rax
	movq %rax, (%r15)
Lbb42:
	movq %rax, (%r14)
	jmp Lbb44
Lbb43:
	subq $32, %rsp
	callq cli_cmd_test_c_compiler_missing_error
	subq $-32, %rsp
	movq %rax, (%r14)
Lbb44:
	movq %rax, (%r13)
	jmp Lbb46
Lbb45:
	subq $32, %rsp
	callq cli_cmd_test_qbe_missing_error
	subq $-32, %rsp
	movq %rax, (%r13)
Lbb46:
	movq %rax, (%r12)
	jmp Lbb48
Lbb47:
	movq 8(%rax), %rax
	movq %rax, (%r12)
Lbb48:
	movq %rax, (%rbx)
	jmp Lbb50
Lbb49:
	movq 8(%rax), %rax
	movq %rax, (%rbx)
Lbb50:
	movq %rax, (%rdi)
	jmp Lbb52
Lbb51:
	movq 8(%rax), %rax
	movq %rax, (%rdi)
Lbb52:
	movq %rax, (%rsi)
	jmp Lbb55
Lbb53:
	movq 8(%rax), %rax
	movq %rax, (%rsi)
	jmp Lbb55
Lbb54:
	movq 8(%rax), %rax
Lbb55:
	movq %rbp, %rsp
	subq $240, %rsp
	popq %rdi
	popq %rsi
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
cli_cmd_test_invalid_test_names_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str302(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str304(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str306(%rip), %rdx
	callq cli_cmd_test_invalid_test_lines
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function cli_cmd_test_invalid_test_names_error */

.text
.balign 16
cli_cmd_test_invalid_test_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb60
	movq 8(%rax), %rdi
	movq 16(%rax), %rsi
	subq $32, %rsp
	leaq str322(%rip), %rdx
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
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str326(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_test_invalid_test_lines
	subq $-32, %rsp
	jmp Lbb61
Lbb60:
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str315(%rip), %rcx
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb61:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_test_invalid_test_lines */

.text
.balign 16
cli_cmd_test_no_tests_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str330(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str332(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str334(%rip), %rcx
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function cli_cmd_test_no_tests_error */

.text
.balign 16
cli_cmd_test_qbe_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str337(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str339(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str341(%rip), %rdx
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
/* end function cli_cmd_test_qbe_missing_error */

.text
.balign 16
cli_cmd_test_c_compiler_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str344(%rip), %rcx
	callq utilities_colors_dim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str346(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str348(%rip), %rdx
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
/* end function cli_cmd_test_c_compiler_missing_error */

.text
.balign 16
cli_cmd_test_compile_self_alias:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r9, %rbx
	movq %r8, %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq builder_scanner_project_name
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str352(%rip), %rdx
	callq donna_string_equal
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb72
	subq $32, %rsp
	leaq str362(%rip), %rdx
	callq donna_files_join
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_files_mkdir
	movq %rbx, %r9
	movq %rdi, %r8
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	leaq str365(%rip), %rdx
	callq builder_pipeline_compile_dir
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb71
	movq 8(%rax), %rax
	movq (%rax), %rbx
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb73
Lbb71:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	leaq donna_nil(%rip), %rcx
	movq %rcx, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb73
Lbb72:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	leaq donna_nil(%rip), %rcx
	movq %rcx, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
Lbb73:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_compile_self_alias */

.text
.balign 16
cli_cmd_test_compile_deps:
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
	jz Lbb85
	movq 8(%rax), %rsi
	movq 16(%rax), %r13
	movq %r13, -8(%rbp)
	subq $32, %rsp
	leaq str408(%rip), %rdx
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
	leaq str412(%rip), %rdx
	movq %rcx, %r13
	callq donna_files_join
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	leaq str414(%rip), %rdx
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
	jnz Lbb84
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
	callq cli_cmd_test_compile_deps
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb82
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r14
	movq 16(%rax), %r13
	movq 24(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rbx
	jz Lbb79
	movq %r12, (%rax)
	jmp Lbb81
Lbb79:
	movq $1, (%rax)
	movl $1, %r12d
Lbb81:
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
	jmp Lbb83
Lbb82:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb83:
	movq %rax, (%rsi)
	jmp Lbb87
Lbb84:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb87
Lbb85:
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
Lbb87:
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
/* end function cli_cmd_test_compile_deps */

.text
.balign 16
cli_cmd_test_find_donna_files:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_files_list_dir
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq cli_cmd_test_collect_donna
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function cli_cmd_test_find_donna_files */

.text
.balign 16
cli_cmd_test_collect_donna:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %r8, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb95
	movq 8(%rcx), %rbx
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %r12
	leaq str495(%rip), %rdx
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq donna_string_ends_with
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb93
	subq $32, %rsp
	movq %rdi, %r8
	movq %rdx, %r13
	callq cli_cmd_test_collect_donna
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb97
Lbb93:
	movq %rdx, %r13
	movq %rbx, %rdx
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r13, %rcx
	callq donna_files_join
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rbx, 8(%r8)
	movq %rdi, 16(%r8)
	subq $32, %rsp
	callq cli_cmd_test_collect_donna
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb97
Lbb95:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb97:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_collect_donna */

.text
.balign 16
cli_cmd_test_parse_test_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq argparse_argparse_positional
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str511(%rip), %rdx
	callq argparse_argparse_get
	movq %rax, %rsi
	subq $-32, %rsp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb103
	movq 8(%rdi), %rbx
	movq 16(%rdi), %r13
	subq $32, %rsp
	movq %rbx, %rcx
	callq donna_files_is_dir
	subq $-32, %rsp
	movq %rsi, %r12
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb101
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %r12, 8(%rcx)
	movq %rdi, 16(%rcx)
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq cli_cmd_test_filter_values
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	leaq str544(%rip), %rcx
	movq %rcx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb104
Lbb101:
	movq %r13, %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %r12, 8(%rcx)
	movq %rdi, 16(%rcx)
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq cli_cmd_test_filter_values
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb104
Lbb103:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rsi, 8(%rcx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rcx)
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq cli_cmd_test_filter_values
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	leaq str519(%rip), %rcx
	movq %rcx, (%rax)
	movq %rsi, 8(%rax)
Lbb104:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_parse_test_args */

.text
.balign 16
cli_cmd_test_filter_values:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb109
	movq 8(%rcx), %rbx
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq donna_string_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb108
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rbx, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $32, %rsp
	callq cli_cmd_test_filter_values
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb111
Lbb108:
	subq $32, %rsp
	movq %rdi, %rdx
	callq cli_cmd_test_filter_values
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb111
Lbb109:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb111:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_test_filter_values */

.text
.balign 16
cli_cmd_test_linker_flags:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str578(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb114
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str590(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb115
Lbb114:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	leaq str586(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb115:
	leave
	ret
/* end function cli_cmd_test_linker_flags */

.text
.balign 16
cli_cmd_test_maybe_codesign:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str595(%rip), %rcx
	callq donna_shell_run
	movq %rsi, %rdx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $0, %rax
	jz Lbb118
	subq $32, %rsp
	leaq str603(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str605(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	subq $-32, %rsp
	jmp Lbb119
Lbb118:
	movl $0, %eax
Lbb119:
	popq %rsi
	leave
	ret
/* end function cli_cmd_test_maybe_codesign */

.text
.balign 16
cli_cmd_test_scrub_main_from_ssa:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %r12
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb125
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	callq donna_files_read
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq str621(%rip), %rdx
	movq %rcx, %rbx
	movq %r13, %rcx
	callq donna_string_contains
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	leaq str623(%rip), %rdx
	movq %rcx, %r13
	movq %r14, %rcx
	callq donna_string_contains
	movq %r14, %rdx
	movq %r13, %rcx
	subq $-32, %rsp
	orq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb123
	subq $32, %rsp
	leaq str632(%rip), %r8
	movq %rdx, %r14
	leaq str631(%rip), %rdx
	movq %rcx, %r13
	movq %r14, %rcx
	callq donna_string_replace
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str635(%rip), %r8
	movq %rdx, %r12
	leaq str634(%rip), %rdx
	callq donna_string_replace
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq %rdx, (%rbx)
	jmp Lbb124
Lbb123:
	movq %rdx, (%rbx)
Lbb124:
	movq %rdx, %rbx
	subq $32, %rsp
	callq donna_files_basename
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r12, %rcx
	callq donna_files_join
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq donna_files_write
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rdi, 8(%r8)
	movq %rsi, 16(%r8)
	subq $32, %rsp
	callq cli_cmd_test_scrub_main_from_ssa
	subq $-32, %rsp
	jmp Lbb127
Lbb125:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb127:
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
/* end function cli_cmd_test_scrub_main_from_ssa */

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

