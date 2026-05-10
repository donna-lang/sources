.data
.balign 8
str10:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str12:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str19:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str28:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str30:
	.ascii ": entry point not found: "
	.byte 0
/* end data */

.data
.balign 8
str45:
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
str65:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str77:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str84:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
str86:
	.ascii "  no errors"
	.byte 0
/* end data */

.data
.balign 8
str102:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str106:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str108:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str148:
	.ascii "lex"
	.byte 0
/* end data */

.data
.balign 8
str161:
	.ascii "parse"
	.byte 0
/* end data */

.data
.balign 8
str190:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
str192:
	.ascii "  no errors or warnings"
	.byte 0
/* end data */

.data
.balign 8
str197:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
str199:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str202:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str206:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str208:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str223:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str225:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str228:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str232:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str234:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str237:
	.ascii " error(s), "
	.byte 0
/* end data */

.data
.balign 8
str241:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str246:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str248:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str253:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str255:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str258:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str261:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str265:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str267:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str310:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str323:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_check_run
cli_cmd_check_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq cli_cmd_check_first_positional
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_scanner_scan
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %rsi
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb5
	movq 8(%rax), %rbx
	subq $32, %rsp
	movq %rbx, %rcx
	callq builder_scanner_project_name
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq builder_scanner_project_src_dir
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str19(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_files_exists
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb3
	subq $32, %rsp
	callq cli_cmd_check_check_project
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb6
Lbb3:
	movq %rdi, %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str28(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str30(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb6
Lbb5:
	movq 8(%rax), %rsi
	subq $32, %rsp
	leaq str10(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str12(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb6:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_run */

.text
.balign 16
cli_cmd_check_check_project:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %rdx, %rbx
	movq %rcx, %r13
	subq $32, %rsp
	callq donna_time_now_us
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rbx, %rcx
	callq builder_scanner_project_name
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movq %rbx, %rcx
	callq builder_scanner_project_build_dir
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rbx, %rcx
	callq builder_scanner_project_dev_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq builder_scanner_project_dev_artifacts_dir
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r15
	movq %rsi, %rcx
	callq donna_files_mkdir
	movq %r15, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %r14, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movq %r12, %rcx
	callq donna_files_mkdir
	movq %r14, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_logger_checking
	movq %r13, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq str45(%rip), %rdx
	movq %rcx, %rbx
	movq %r13, %rcx
	callq donna_files_join
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_dependencies_resolve_deps
	movq %r12, %r8
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rsi
	leaq donna_nil(%rip), %r8
	callq cli_cmd_check_compile_deps
	movq %rbx, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb11
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq builder_scanner_project_src_dir
	movq %rbx, %r9
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	leaq str65(%rip), %rdx
	callq builder_pipeline_compile_dir
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb10
	subq $32, %rsp
	callq donna_time_now_us
	subq $-32, %rsp
	movq %rax, %rcx
	subq %rdi, %rcx
	subq $32, %rsp
	callq utilities_logger_check_ok
	subq $-32, %rsp
	subq $32, %rsp
	leaq str84(%rip), %rcx
	callq utilities_colors_green
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str86(%rip), %rcx
	callq utilities_colors_dim
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb12
Lbb10:
	movq 8(%rax), %rdi
	subq $32, %rsp
	leaq str75(%rip), %rcx
	callq utilities_colors_red
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str77(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb12
Lbb11:
	movq 8(%rax), %rsi
	subq $32, %rsp
	leaq str57(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str59(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb12:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_check_project */

.text
.balign 16
cli_cmd_check_compile_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb17
	movq 8(%rcx), %r12
	movq 16(%rcx), %rdi
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str102(%rip), %rdx
	movq %rbx, %rcx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %r12, %rcx
	callq builder_dependencies_dep_name
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq str106(%rip), %rdx
	movq %rcx, %rbx
	callq donna_files_join
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str108(%rip), %rdx
	movq %rcx, %r14
	movq %rbx, %rcx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %r14, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_mkdir
	movq %r12, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movq %r13, %rcx
	callq donna_files_mkdir
	movq %r12, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	callq builder_dependencies_dep_src_dir
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_dependencies_dep_name
	movq %r13, %r8
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	movq %rsi, %r9
	callq builder_pipeline_compile_dir
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb16
	movq 8(%rax), %rax
	movq %rdx, %rbx
	movq (%rax), %rdx
	subq $32, %rsp
	callq donna_list_append
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_check_compile_deps
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb19
Lbb16:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb19
Lbb17:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
Lbb19:
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
/* end function cli_cmd_check_compile_deps */

.text
.balign 16
cli_cmd_check_check_file:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq %rcx, %rbx
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_files_read
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_time_now_us
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rbx, %rcx
	callq utilities_logger_checking
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r12, %rcx
	callq compiler_lexer_lexer_lex
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb29
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parser_parse
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb27
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	callq compiler_analysis_analyser_analyse
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_check_module
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb24
	subq $32, %rsp
	callq donna_time_now_us
	subq $-32, %rsp
	movq %rax, %rcx
	subq %r13, %rcx
	subq $32, %rsp
	callq utilities_logger_check_ok
	movq %r12, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rbx, %rcx
	callq cli_cmd_check_render_check_ok
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb26
Lbb24:
	movq %rbx, %rdx
	movq %r12, %rbx
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rbx, %r8
	callq cli_cmd_check_render_errors_and_warnings
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb26:
	movq %rax, (%rsi)
	jmp Lbb31
Lbb27:
	movq %r12, %rdx
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq str161(%rip), %r8
	callq cli_cmd_check_render_phase_errors
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb31
Lbb29:
	movq %r12, %rdx
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq str148(%rip), %r8
	callq cli_cmd_check_render_phase_errors
	subq $-32, %rsp
Lbb31:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_check_file */

.text
.balign 16
cli_cmd_check_render_check_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_list_is_empty
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb34
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rcx, %rsi
	callq cli_cmd_check_render_warnings
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_length
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str197(%rip), %rcx
	callq utilities_colors_yellow
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str199(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str202(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_bold
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str206(%rip), %rdx
	callq donna_string_join
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str208(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb35
Lbb34:
	subq $32, %rsp
	leaq str190(%rip), %rcx
	callq utilities_colors_green
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str192(%rip), %rcx
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb35:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_check_render_check_ok */

.text
.balign 16
cli_cmd_check_render_errors_and_warnings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %r8, %rdx
	movq %rcx, %rsi
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rdx, %rbx
	movq %rsi, %rcx
	callq cli_cmd_check_render_errors
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq cli_cmd_check_render_warnings
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_length
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_length
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	cmpq $0, %rbx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb39
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str232(%rip), %rcx
	callq utilities_colors_error_header
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str234(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str237(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str241(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_bold
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rdx
	subq $-32, %rsp
	movq %rsi, %rcx
	jmp Lbb40
Lbb39:
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str223(%rip), %rcx
	callq utilities_colors_error_header
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str225(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str228(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_bold
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
Lbb40:
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str246(%rip), %rdx
	callq donna_string_join
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str248(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_render_errors_and_warnings */

.text
.balign 16
cli_cmd_check_render_phase_errors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rcx, %rsi
	callq cli_cmd_check_render_errors
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_length
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str253(%rip), %rcx
	callq utilities_colors_error_header
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str255(%rip), %rcx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str258(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str261(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_bold
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str265(%rip), %rdx
	callq donna_string_join
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str267(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_render_phase_errors */

.text
.balign 16
cli_cmd_check_render_errors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb46
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %r12
	callq errors_reporter_render_error
	movq %rdi, %rcx
	movq %rax, %rdi
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
	callq cli_cmd_check_render_errors
	subq $-32, %rsp
	jmp Lbb48
Lbb46:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb48:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_render_errors */

.text
.balign 16
cli_cmd_check_render_warnings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb51
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %r12
	callq errors_reporter_render_warning
	movq %rdi, %rcx
	movq %rax, %rdi
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
	callq cli_cmd_check_render_warnings
	subq $-32, %rsp
	jmp Lbb53
Lbb51:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb53:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_render_warnings */

.text
.balign 16
cli_cmd_check_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb62
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb58
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb59
Lbb58:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str323(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb59:
	cmpl $0, %eax
	jnz Lbb61
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_check_first_positional
	subq $-32, %rsp
	jmp Lbb63
Lbb61:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb63
Lbb62:
	leaq str310(%rip), %rax
Lbb63:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_check_first_positional */

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

