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
str407:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str411:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str413:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str491:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str507:
	.ascii "only"
	.byte 0
/* end data */

.data
.balign 8
str515:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str540:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str574:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str582:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str586:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
str591:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str599:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
str601:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str617:
	.ascii "$main("
	.byte 0
/* end data */

.data
.balign 8
str619:
	.ascii "$donna_program_main("
	.byte 0
/* end data */

.data
.balign 8
str627:
	.ascii "export function w $main("
	.byte 0
/* end data */

.data
.balign 8
str628:
	.ascii "function w $__proj_main("
	.byte 0
/* end data */

.data
.balign 8
str630:
	.ascii "export function w $donna_program_main("
	.byte 0
/* end data */

.data
.balign 8
str631:
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
	pushq %r12
	pushq %r13
	leaq str0(%rip), %rsi
	movq %rdi, %rbx
	callq argparse_argparse_has
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb7
	leaq str8(%rip), %rsi
	movq %rdi, %rbx
	callq argparse_argparse_has
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb6
	callq cli_cmd_test_parse_test_args
	movq (%rax), %rdi
	movq 8(%rax), %r13
	movq %rdi, %r12
	callq builder_scanner_scan
	movq %r13, %rdx
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb4
	movq 8(%rax), %rsi
	callq cli_cmd_test_do_test
	movq %rax, (%r12)
	jmp .Lbb5
.Lbb4:
	movq 8(%rax), %r13
	leaq str30(%rip), %rdi
	callq utilities_colors_red
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq str32(%rip), %rsi
	callq __rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, (%r12)
.Lbb5:
	movq %rax, (%rbx)
	jmp .Lbb8
.Lbb6:
	callq cli_help_test_help
	movq %rax, (%rbx)
	jmp .Lbb8
.Lbb7:
	callq cli_help_test_help
.Lbb8:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_test_run, @function
.size cli_cmd_test_run, .-cli_cmd_test_run
/* end function cli_cmd_test_run */

.text
.balign 16
cli_cmd_test_do_test:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, -8(%rbp)
	movq %rsi, %r12
	leaq str41(%rip), %rsi
	movq %rdi, %rbx
	callq donna_files_join
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	movq %rbx, %rdi
	callq donna_files_is_dir
	movq %r13, %rdi
	cmpq $0, %rax
	jz .Lbb22
	movq %rdi, %r13
	movq %rbx, %rdi
	callq cli_cmd_test_find_donna_files
	movq %r13, %rdi
	movq %rax, %r13
	movq %rdi, %r14
	movq %r13, %rdi
	callq donna_list_is_empty
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r15
	movq %r15, -40(%rbp)
	cmpq $1, %rax
	jz .Lbb20
	movq %rdi, %rbx
	movq %r13, %rdi
	callq builder_tester_collect_test_modules
	movq %rbx, %rdi
	movq %rax, %r14
	movq %rdi, %rbx
	movq %r13, %rdi
	callq builder_tester_collect_invalid_public_test_functions
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r15
	movq %rbx, %rdi
	callq donna_list_is_empty
	movq %r15, %rdi
	movq %rax, %rcx
	movq -40(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -32(%rbp)
	cmpq $0, %rcx
	jz .Lbb17
	movq %rdi, %rbx
	movq %r14, %rdi
	callq builder_tester_count_total
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, %rdi
	movq -32(%rbp), %rax
	movq %rsi, %r12
	movq -8(%rbp), %rsi
	cmpq $0, %rdi
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -24(%rbp)
	cmpq $1, %rdx
	jz .Lbb14
	movq %r14, %rdi
	callq builder_tester_generate_filtered_runner
	movq %rax, -16(%rbp)
	movq %r12, %rdi
	callq builder_scanner_project_build_dir
	movq %rax, %rdi
	movq %rdi, %r15
	movq %r12, %rdi
	callq builder_scanner_project_test_dir
	movq %r15, %rdi
	movq %rax, %r15
	callq donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq donna_files_mkdir
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rsi, %r12
	leaq str86(%rip), %rsi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq donna_files_join
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r8
	movq %rsi, %r12
	movq -16(%rbp), %rsi
	movq %r8, -48(%rbp)
	movq %rdi, %rbx
	movq %r8, %rdi
	callq donna_files_write
	movq %r15, %r9
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq -24(%rbp), %r13
	movq -32(%rbp), %r12
	movq -40(%rbp), %rbx
	movq -48(%rbp), %r8
	callq cli_cmd_test_build_and_run
	movq %rax, (%r13)
	jmp .Lbb16
.Lbb14:
	movq %rcx, %r13
	movq %rax, %r12
	movq %r15, %rbx
	callq cli_cmd_test_no_tests_error
	movq %rax, (%r13)
.Lbb16:
	movq %rax, (%r12)
	jmp .Lbb19
.Lbb17:
	movq %rax, %r12
	movq %rbx, %rdi
	movq %r15, %rbx
	callq cli_cmd_test_invalid_test_names_error
	movq %rax, (%r12)
.Lbb19:
	movq %rax, (%rbx)
	jmp .Lbb23
.Lbb20:
	movq %rbx, %rdi
	movq %r15, %rbx
	movq %rdi, %r12
	leaq str60(%rip), %rdi
	callq utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %r12
	callq utilities_colors_path
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb23
.Lbb22:
	movq %rdi, %rbx
	leaq str49(%rip), %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_colors_path
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
.Lbb23:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_test_do_test, @function
.size cli_cmd_test_do_test, .-cli_cmd_test_do_test
/* end function cli_cmd_test_do_test */

.text
.balign 16
cli_cmd_test_build_and_run:
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
	movq %r8, -72(%rbp)
	movq %rdx, -80(%rbp)
	movq %rsi, %rbx
	movq %rdi, %r12
	leaq str94(%rip), %rsi
	movq %r12, %rdi
	callq donna_files_join
	movq %rax, %rdi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq builder_scanner_project_build_dir
	movq %r13, %rdi
	movq %rax, -8(%rbp)
	movq %rdi, %r13
	movq %rbx, %rdi
	callq builder_scanner_project_dev_artifacts_dir
	movq %r13, %rdi
	movq %rax, %r14
	movq %rdi, %r13
	movq %rbx, %rdi
	callq builder_scanner_project_dev_dir
	movq %rax, %rdi
	callq donna_files_mkdir
	movq %r13, %rdi
	movq %rdi, %r13
	movq %r14, %rdi
	callq donna_files_mkdir
	movq %r13, %rdi
	movq %r12, %rsi
	movq %rdi, %r13
	callq builder_dependencies_resolve_deps
	movq %r13, %rdi
	movq %rax, -16(%rbp)
	movq -8(%rbp), %rsi
	movq %rsi, %r13
	movq %r12, %rsi
	callq builder_dependencies_resolve_dev_deps
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, -48(%rbp)
	movq -16(%rbp), %r12
	movq %rsi, %r13
	movq %r14, %rsi
	callq builder_pipeline_compile_ffi
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r8
	leaq donna_nil(%rip), %rcx
	movq %rdx, %r12
	leaq donna_nil(%rip), %rdx
	movq %rsi, %r13
	callq cli_cmd_test_compile_deps
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb56
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq 8(%rax), %rcx
	movq %rcx, -144(%rbp)
	movq 16(%rax), %r8
	movq %r8, -168(%rbp)
	movq 24(%rax), %r8
	movq %r8, -24(%rbp)
	movq %rdi, %rbx
	callq builder_scanner_project_src_dir
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rax, %rsi
	movq -24(%rbp), %r8
	movq %r14, %rcx
	movq %rsi, %r12
	leaq str124(%rip), %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq builder_pipeline_compile_dir
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -56(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb55
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq %rcx, -64(%rbp)
	movq 8(%rax), %rax
	movq %rax, -32(%rbp)
	movq %rsi, %r12
	leaq str142(%rip), %rsi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq donna_files_join
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, -40(%rbp)
	movq %rdi, %rbx
	movq %rsi, %rdi
	callq donna_files_mkdir
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rsi, %r12
	movq -40(%rbp), %rsi
	movq %rdi, %rbx
	movq -32(%rbp), %rdi
	leaq donna_nil(%rip), %rdx
	callq cli_cmd_test_scrub_main_from_ssa
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, -136(%rbp)
	movq -56(%rbp), %rbx
	movq -48(%rbp), %r12
	movq %r14, %rcx
	movq %r15, %rdx
	callq cli_cmd_test_compile_self_alias
	movq %r13, %rsi
	movq -64(%rbp), %rdi
	movq %rsi, %r13
	movq (%rax), %rsi
	movq 8(%rax), %rax
	movq %rax, -128(%rbp)
	callq donna_list_append
	movq %r14, %rdi
	movq %rax, %rsi
	callq donna_list_append
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	leaq donna_nil(%rip), %r8
	leaq donna_nil(%rip), %rcx
	movq %r12, %rdx
	callq cli_cmd_test_compile_deps
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb53
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq 8(%rax), %rcx
	movq %rcx, -120(%rbp)
	movq 16(%rax), %r13
	movq %r13, -160(%rbp)
	callq donna_list_append
	movq %rax, %rdi
	leaq str173(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq donna_files_join
	movq %r13, %rdi
	movq %rax, %r14
	movq %rdi, %r13
	movq %r14, %rdi
	callq donna_files_mkdir
	movq %r14, %rdx
	movq %r13, %rdi
	movq -72(%rbp), %r14
	movq %rdi, %r13
	movq -80(%rbp), %rdi
	movq %r13, %rcx
	leaq str176(%rip), %rsi
	callq builder_pipeline_compile_file_list
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb51
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq 8(%rax), %rax
	movq %rax, -96(%rbp)
	callq donna_list_append
	movq %r14, %rdi
	movq %rax, -88(%rbp)
	leaq str195(%rip), %rsi
	movq %rdi, %r14
	movq %r15, %rdi
	callq donna_files_join
	movq %rax, %rdi
	callq donna_files_delete
	movq %r14, %rdi
	movq -88(%rbp), %rcx
	movq -96(%rbp), %r14
	movl $1, %r8d
	movq %r15, %rdx
	leaq str198(%rip), %rsi
	callq builder_pipeline_compile_module
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -184(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb49
	movq 8(%rax), %rax
	movq 8(%rax), %rax
	movq %rax, -112(%rbp)
	callq donna_list_reverse
	movq %r15, %rdi
	movq %rax, -104(%rbp)
	movq %rdi, %r15
	movl $24, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -104(%rbp), %rdi
	movq -112(%rbp), %rax
	movq $1, (%rsi)
	movq %rax, 8(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	callq donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -120(%rbp), %rdi
	callq donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -128(%rbp), %rdi
	callq donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -136(%rbp), %rdi
	callq donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -144(%rbp), %rdi
	callq donna_list_append
	movq %rax, -152(%rbp)
	callq builder_pipeline_qbe_available
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -208(%rbp)
	cmpq $0, %rcx
	jz .Lbb46
	callq builder_pipeline_c_compiler_available
	movq %r15, %rdi
	movq %rax, %rcx
	movq -208(%rbp), %rax
	movq %rdi, %r15
	movq -152(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -240(%rbp)
	cmpq $0, %rcx
	jz .Lbb43
	callq builder_pipeline_run_qbe_all_checked
	movq %r15, %rdi
	movq -240(%rbp), %rcx
	movq -208(%rbp), %r15
	movq -160(%rbp), %rsi
	movq -168(%rbp), %r8
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -232(%rbp)
	movq (%rax), %r9
	cmpq $1, %r9
	setz %r9b
	movzbq %r9b, %r9
	cmpl $0, %r9d
	jnz .Lbb41
	movq %r8, %r14
	movq 8(%rax), %rax
	movq %rax, -200(%rbp)
	movq %rsi, %r15
	leaq str250(%rip), %rsi
	callq donna_files_join
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %r14
	callq donna_list_append
	movq %rax, -192(%rbp)
	callq cli_cmd_test_linker_flags
	movq %r14, %rdi
	movq %rax, -176(%rbp)
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r14, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, %r14
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r14)
	movq %rdi, %r15
	movl $24, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq %r14, %rax
	movq -184(%rbp), %r14
	movq %rdi, %r15
	movq -176(%rbp), %rdi
	movq $1, (%rsi)
	leaq str257(%rip), %rcx
	movq %rcx, 8(%rsi)
	movq %rax, 16(%rsi)
	callq donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -192(%rbp), %rdi
	callq donna_list_append
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -200(%rbp), %rdi
	callq donna_list_append
	movq %rax, %rdi
	callq builder_pipeline_c_command
	movq %rax, %rdi
	leaq str265(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_shell_run
	movq %r15, %rdi
	movq -208(%rbp), %r15
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rsi, -224(%rbp)
	cmpq $0, %rax
	jz .Lbb39
	movq %rdi, %r15
	callq cli_cmd_test_maybe_codesign
	movq %r15, %rdi
	movq %rdi, %r15
	leaq str279(%rip), %rdi
	callq utilities_colors_dim
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	leaq str281(%rip), %rdi
	movl $0, %eax
	callq printf
	callq donna_shell_flush
	movq %r15, %rdi
	movq -208(%rbp), %r15
	leaq donna_nil(%rip), %rsi
	callq donna_shell_exec
	movq %rax, %rdi
	movq -224(%rbp), %rsi
	movq -232(%rbp), %rdx
	movq -240(%rbp), %rcx
	cmpq $0, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -216(%rbp)
	cmpq $1, %r8
	jz .Lbb36
	callq exit
	movq -216(%rbp), %rdi
	movq -224(%rbp), %rsi
	movq -232(%rbp), %rdx
	movq -240(%rbp), %rcx
	leaq str291(%rip), %rax
	movq %rax, (%rdi)
	leaq str291(%rip), %rax
	jmp .Lbb38
.Lbb36:
	movq %rax, %rdi
	leaq str290(%rip), %rax
	movq %rax, (%rdi)
	leaq str290(%rip), %rax
.Lbb38:
	movq %rax, (%rsi)
	jmp .Lbb40
.Lbb39:
	leaq str274(%rip), %rdi
	callq utilities_colors_red
	movq %rax, %rdi
	leaq str276(%rip), %rsi
	callq __rt_str_concat
	movq -224(%rbp), %rsi
	movq -232(%rbp), %rdx
	movq -240(%rbp), %rcx
	movq %rax, (%rsi)
.Lbb40:
	movq %rax, (%rdx)
	jmp .Lbb42
.Lbb41:
	movq 8(%rax), %rax
	movq %rax, (%rdx)
.Lbb42:
	movq %rax, (%rcx)
	jmp .Lbb45
.Lbb43:
	movq %rax, %r15
	callq cli_cmd_test_c_compiler_missing_error
	movq -240(%rbp), %rcx
	movq %rax, (%rcx)
.Lbb45:
	movq %rax, (%r15)
	jmp .Lbb48
.Lbb46:
	movq %rax, %r15
	callq cli_cmd_test_qbe_missing_error
	movq %rax, (%r15)
.Lbb48:
	movq %rax, (%r14)
	jmp .Lbb50
.Lbb49:
	movq 8(%rax), %rax
	movq %rax, (%r14)
.Lbb50:
	movq %rax, (%r13)
	jmp .Lbb52
.Lbb51:
	movq 8(%rax), %rax
	movq %rax, (%r13)
.Lbb52:
	movq %rax, (%r12)
	jmp .Lbb54
.Lbb53:
	movq 8(%rax), %rax
	movq %rax, (%r12)
.Lbb54:
	movq %rax, (%rbx)
	jmp .Lbb57
.Lbb55:
	movq 8(%rax), %rax
	movq %rax, (%rbx)
	jmp .Lbb57
.Lbb56:
	movq 8(%rax), %rax
.Lbb57:
	movq %rbp, %rsp
	subq $288, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_test_build_and_run, @function
.size cli_cmd_test_build_and_run, .-cli_cmd_test_build_and_run
/* end function cli_cmd_test_build_and_run */

.text
.balign 16
cli_cmd_test_invalid_test_names_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str302(%rip), %rdi
	callq utilities_colors_red
	movq %rax, %rdi
	leaq str304(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq str306(%rip), %rsi
	callq cli_cmd_test_invalid_test_lines
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type cli_cmd_test_invalid_test_names_error, @function
.size cli_cmd_test_invalid_test_names_error, .-cli_cmd_test_invalid_test_names_error
/* end function cli_cmd_test_invalid_test_names_error */

.text
.balign 16
cli_cmd_test_invalid_test_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rax
	movq %rsi, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb62
	movq 8(%rax), %r12
	movq 16(%rax), %rbx
	leaq str322(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq utilities_colors_path
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str326(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	callq cli_cmd_test_invalid_test_lines
	jmp .Lbb63
.Lbb62:
	movq %rdi, %rbx
	leaq str315(%rip), %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
.Lbb63:
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_test_invalid_test_lines, @function
.size cli_cmd_test_invalid_test_lines, .-cli_cmd_test_invalid_test_lines
/* end function cli_cmd_test_invalid_test_lines */

.text
.balign 16
cli_cmd_test_no_tests_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str330(%rip), %rdi
	callq utilities_colors_red
	movq %rax, %rdi
	leaq str332(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %rbx
	leaq str334(%rip), %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type cli_cmd_test_no_tests_error, @function
.size cli_cmd_test_no_tests_error, .-cli_cmd_test_no_tests_error
/* end function cli_cmd_test_no_tests_error */

.text
.balign 16
cli_cmd_test_qbe_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str337(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, %rbx
	leaq str339(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str341(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type cli_cmd_test_qbe_missing_error, @function
.size cli_cmd_test_qbe_missing_error, .-cli_cmd_test_qbe_missing_error
/* end function cli_cmd_test_qbe_missing_error */

.text
.balign 16
cli_cmd_test_c_compiler_missing_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str344(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, %rbx
	leaq str346(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str348(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	popq %rbx
	leave
	ret
.type cli_cmd_test_c_compiler_missing_error, @function
.size cli_cmd_test_c_compiler_missing_error, .-cli_cmd_test_c_compiler_missing_error
/* end function cli_cmd_test_c_compiler_missing_error */

.text
.balign 16
cli_cmd_test_compile_self_alias:
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
	callq builder_scanner_project_name
	movq %rax, %rdi
	leaq str352(%rip), %rsi
	callq donna_string_equal
	movq %r12, %rdi
	cmpq $0, %rax
	jz .Lbb74
	leaq str362(%rip), %rsi
	callq donna_files_join
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_files_mkdir
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movl $0, %r8d
	leaq str365(%rip), %rsi
	callq builder_pipeline_compile_dir
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb73
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb75
.Lbb73:
	movl $16, %edi
	callq malloc
	leaq donna_nil(%rip), %rcx
	movq %rcx, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb75
.Lbb74:
	movl $16, %edi
	callq malloc
	leaq donna_nil(%rip), %rcx
	movq %rcx, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
.Lbb75:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_test_compile_self_alias, @function
.size cli_cmd_test_compile_self_alias, .-cli_cmd_test_compile_self_alias
/* end function cli_cmd_test_compile_self_alias */

.text
.balign 16
cli_cmd_test_compile_deps:
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
	jz .Lbb87
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, -48(%rbp)
	leaq str407(%rip), %rsi
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
	leaq str411(%rip), %rsi
	callq donna_files_join
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %r13
	leaq str413(%rip), %rsi
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
	jnz .Lbb86
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
	callq cli_cmd_test_compile_deps
	movq %r12, %rcx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb84
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r14
	movq 16(%rax), %rdx
	movq %rdx, -96(%rbp)
	movq 24(%rax), %r13
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb81
	movq %r13, (%rax)
	jmp .Lbb83
.Lbb81:
	movq $1, (%rax)
	movl $1, %r13d
.Lbb83:
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
	jmp .Lbb85
.Lbb84:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%r12)
.Lbb85:
	movq %rax, (%rbx)
	jmp .Lbb89
.Lbb86:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb89
.Lbb87:
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
.Lbb89:
	movq %rbp, %rsp
	subq $144, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_test_compile_deps, @function
.size cli_cmd_test_compile_deps, .-cli_cmd_test_compile_deps
/* end function cli_cmd_test_compile_deps */

.text
.balign 16
cli_cmd_test_find_donna_files:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq donna_files_list_dir
	movq %rbx, %rsi
	movq %rax, %rdi
	leaq donna_nil(%rip), %rdx
	callq cli_cmd_test_collect_donna
	popq %rbx
	leave
	ret
.type cli_cmd_test_find_donna_files, @function
.size cli_cmd_test_find_donna_files, .-cli_cmd_test_find_donna_files
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
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb97
	movq 8(%rdi), %r13
	movq 16(%rdi), %rdi
	movq %rsi, %r14
	leaq str491(%rip), %rsi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq donna_string_ends_with
	movq %r14, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb95
	movq %r12, %rdx
	movq %rsi, %r15
	callq cli_cmd_test_collect_donna
	movq %rax, (%rbx)
	jmp .Lbb99
.Lbb95:
	movq %rsi, %r15
	movq %r13, %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq donna_files_join
	movq %r13, %rdi
	movq %rax, %r13
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq cli_cmd_test_collect_donna
	movq %rax, (%rbx)
	jmp .Lbb99
.Lbb97:
	movq %r12, %rdi
	callq donna_list_reverse
.Lbb99:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_test_collect_donna, @function
.size cli_cmd_test_collect_donna, .-cli_cmd_test_collect_donna
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
	pushq %r14
	pushq %r15
	movq %rdi, %rbx
	callq argparse_argparse_positional
	movq %rbx, %rdi
	movq %rax, %r12
	leaq str507(%rip), %rsi
	callq argparse_argparse_get
	movq %rax, %rbx
	movq (%r12), %rax
	cmpq $0, %rax
	jz .Lbb105
	movq 8(%r12), %r13
	movq 16(%r12), %r15
	movq %r13, %rdi
	callq donna_files_is_dir
	movq %rbx, %r14
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb103
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r14, 8(%rdi)
	movq %r12, 16(%rdi)
	leaq donna_nil(%rip), %rsi
	callq cli_cmd_test_filter_values
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	leaq str540(%rip), %rcx
	movq %rcx, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb106
.Lbb103:
	movq %r15, %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r14, 8(%rdi)
	movq %r12, 16(%rdi)
	leaq donna_nil(%rip), %rsi
	callq cli_cmd_test_filter_values
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb106
.Lbb105:
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	leaq donna_nil(%rip), %rsi
	callq cli_cmd_test_filter_values
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	leaq str515(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
.Lbb106:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_test_parse_test_args, @function
.size cli_cmd_test_parse_test_args, .-cli_cmd_test_parse_test_args
/* end function cli_cmd_test_parse_test_args */

.text
.balign 16
cli_cmd_test_filter_values:
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
	jz .Lbb111
	movq 8(%rdi), %r13
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq donna_string_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb110
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq cli_cmd_test_filter_values
	movq %rax, (%rbx)
	jmp .Lbb113
.Lbb110:
	movq %r12, %rsi
	callq cli_cmd_test_filter_values
	movq %rax, (%rbx)
	jmp .Lbb113
.Lbb111:
	movq %r12, %rdi
	callq donna_list_reverse
.Lbb113:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_test_filter_values, @function
.size cli_cmd_test_filter_values, .-cli_cmd_test_filter_values
/* end function cli_cmd_test_filter_values */

.text
.balign 16
cli_cmd_test_linker_flags:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq str574(%rip), %rdi
	callq donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb116
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	leaq str586(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp .Lbb117
.Lbb116:
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	leaq str582(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
.Lbb117:
	leave
	ret
.type cli_cmd_test_linker_flags, @function
.size cli_cmd_test_linker_flags, .-cli_cmd_test_linker_flags
/* end function cli_cmd_test_linker_flags */

.text
.balign 16
cli_cmd_test_maybe_codesign:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	leaq str591(%rip), %rdi
	callq donna_shell_run
	movq %rbx, %rsi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $0, %rax
	jz .Lbb120
	leaq str599(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str601(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_shell_run
	jmp .Lbb121
.Lbb120:
	movl $0, %eax
.Lbb121:
	popq %rbx
	leave
	ret
.type cli_cmd_test_maybe_codesign, @function
.size cli_cmd_test_maybe_codesign, .-cli_cmd_test_maybe_codesign
/* end function cli_cmd_test_maybe_codesign */

.text
.balign 16
cli_cmd_test_scrub_main_from_ssa:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %rbx
	movq %rsi, %r14
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb127
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %r13
	callq donna_files_read
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rsi, %r15
	leaq str617(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq donna_string_contains
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, -16(%rbp)
	movq %rsi, %r15
	leaq str619(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq donna_string_contains
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq -16(%rbp), %rax
	orq %rcx, %rax
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $0, %rax
	jz .Lbb125
	leaq str628(%rip), %rdx
	movq %rsi, %rax
	leaq str627(%rip), %rsi
	movq %rdi, %r15
	movq %rax, %rdi
	callq donna_string_replace
	movq %r14, %rsi
	movq %rax, %rdi
	leaq str631(%rip), %rdx
	movq %rsi, %r14
	leaq str630(%rip), %rsi
	callq donna_string_replace
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rsi, (%r13)
	jmp .Lbb126
.Lbb125:
	movq %rsi, (%r13)
.Lbb126:
	movq %rsi, %r13
	callq donna_files_basename
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	movq %r14, %rdi
	callq donna_files_join
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movq %r12, %rdi
	callq donna_files_write
	movq %r13, %rdi
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq cli_cmd_test_scrub_main_from_ssa
	jmp .Lbb129
.Lbb127:
	movq %rbx, %rdi
	callq donna_list_reverse
.Lbb129:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_test_scrub_main_from_ssa, @function
.size cli_cmd_test_scrub_main_from_ssa, .-cli_cmd_test_scrub_main_from_ssa
/* end function cli_cmd_test_scrub_main_from_ssa */

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
