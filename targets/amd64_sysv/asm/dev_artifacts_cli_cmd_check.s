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
str27:
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
str42:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str56:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
str58:
	.ascii "  no errors"
	.byte 0
/* end data */

.data
.balign 8
str74:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str78:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str80:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str120:
	.ascii "lex"
	.byte 0
/* end data */

.data
.balign 8
str133:
	.ascii "parse"
	.byte 0
/* end data */

.data
.balign 8
str162:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
str164:
	.ascii "  no errors or warnings"
	.byte 0
/* end data */

.data
.balign 8
str169:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
str171:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str174:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str178:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str180:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str195:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str197:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str200:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str204:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str206:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str209:
	.ascii " error(s), "
	.byte 0
/* end data */

.data
.balign 8
str213:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str218:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str220:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str225:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str227:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str230:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str233:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str237:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str239:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str282:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str295:
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
	callq cli_cmd_check_first_positional
	movq %rax, %rdi
	movq %rdi, %rbx
	callq builder_scanner_scan
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb2
	movq 8(%rax), %rsi
	callq cli_cmd_check_check_project
	jmp .Lbb3
.Lbb2:
	movq 8(%rax), %rbx
	leaq str10(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str12(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
.Lbb3:
	popq %rbx
	leave
	ret
.type cli_cmd_check_run, @function
.size cli_cmd_check_run, .-cli_cmd_check_run
/* end function cli_cmd_check_run */

.text
.balign 16
cli_cmd_check_check_project:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	movq %rdi, %r15
	callq donna_time_now_us
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	callq builder_scanner_project_name
	movq %rbx, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %rbx
	callq builder_scanner_project_build_dir
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	callq builder_scanner_project_dev_dir
	movq %r13, %rdi
	movq %rax, -8(%rbp)
	movq %rdi, %r13
	callq builder_scanner_project_dev_artifacts_dir
	movq %r13, %rdi
	movq %rax, %r14
	movq %rdi, %r13
	movq %rbx, %rdi
	callq donna_files_mkdir
	movq %r13, %rdi
	movq %rdi, %r13
	movq -8(%rbp), %rdi
	callq donna_files_mkdir
	movq %r13, %rdi
	movq %rdi, %r13
	movq %r14, %rdi
	callq donna_files_mkdir
	movq %r13, %rdi
	movq %rdi, %r13
	movq -16(%rbp), %rdi
	callq utilities_logger_checking
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rsi, %r15
	leaq str27(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq donna_files_join
	movq %r15, %rsi
	movq %rax, %rdi
	callq builder_dependencies_resolve_deps
	movq %r14, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rdx, %rbx
	leaq donna_nil(%rip), %rdx
	callq cli_cmd_check_compile_deps
	movq %r13, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb8
	movq 8(%rax), %r13
	callq builder_scanner_project_src_dir
	movq %r13, %rcx
	movq %rbx, %rdx
	movq %rax, %rdi
	movl $0, %r8d
	leaq str42(%rip), %rsi
	callq builder_pipeline_compile_dir
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb7
	callq donna_time_now_us
	movq %rax, %rdi
	subq %r12, %rdi
	callq utilities_logger_check_ok
	leaq str56(%rip), %rdi
	callq utilities_colors_green
	movq %rax, %rdi
	movq %rdi, %r12
	leaq str58(%rip), %rdi
	callq utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb9
.Lbb7:
	movq 8(%rax), %rax
	movq %rax, (%rbx)
	jmp .Lbb9
.Lbb8:
	movq 8(%rax), %rax
.Lbb9:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_check_check_project, @function
.size cli_cmd_check_check_project, .-cli_cmd_check_check_project
/* end function cli_cmd_check_check_project */

.text
.balign 16
cli_cmd_check_compile_deps:
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
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb14
	movq 8(%rdi), %r14
	movq 16(%rdi), %r12
	movq %r12, -16(%rbp)
	movq %rsi, %r12
	leaq str74(%rip), %rsi
	movq %r12, %rdi
	callq donna_files_join
	movq %rax, %rdi
	movq %rdi, %r13
	movq %r14, %rdi
	callq builder_dependencies_dep_name
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_files_join
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq str78(%rip), %rsi
	movq %rdi, %r12
	callq donna_files_join
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r15
	movq %rsi, %r13
	leaq str80(%rip), %rsi
	movq %rdi, %r12
	movq %r13, %rdi
	callq donna_files_join
	movq %rax, %rdi
	callq donna_files_mkdir
	movq %r12, %rdi
	movq -16(%rbp), %r12
	callq donna_files_mkdir
	movq %r14, %rdi
	movq %rdi, %r14
	movq %r15, %rdi
	callq donna_files_mkdir
	movq %r14, %rdi
	movq %rdi, %r14
	callq builder_dependencies_dep_src_dir
	movq %r14, %rdi
	movq %rax, %r14
	callq builder_dependencies_dep_name
	movq %r15, %rdx
	movq %r14, %rdi
	movq %rax, %rsi
	movl $0, %r8d
	movq %rbx, %rcx
	callq builder_pipeline_compile_dir
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb13
	movq 8(%rax), %rax
	movq %rsi, %r13
	movq (%rax), %rsi
	callq donna_list_append
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq cli_cmd_check_compile_deps
	movq %rax, (%rbx)
	jmp .Lbb16
.Lbb13:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb16
.Lbb14:
	movq %rbx, %rdi
	callq donna_result_Ok
.Lbb16:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_check_compile_deps, @function
.size cli_cmd_check_compile_deps, .-cli_cmd_check_compile_deps
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
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	movq %rdi, %r13
	movq %rbx, %rdi
	callq donna_files_read
	movq %rax, %r14
	callq donna_time_now_us
	movq %rax, %r15
	movq %r13, %rdi
	callq utilities_logger_checking
	movq %rbx, %rsi
	movq %r14, %rdi
	callq compiler_lexer_lexer_lex
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb26
	movq 8(%rax), %rdi
	callq compiler_parser_parser_parse
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb24
	movq 8(%rax), %rdi
	movq %rdi, %r12
	callq compiler_analysis_analyser_analyse
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r13
	callq compiler_typesystem_checker_check_module
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb21
	callq donna_time_now_us
	movq %rax, %rdi
	subq %r15, %rdi
	callq utilities_logger_check_ok
	movq %r14, %rsi
	movq %r13, %rdi
	callq cli_cmd_check_render_check_ok
	movq %rax, (%r12)
	jmp .Lbb23
.Lbb21:
	movq %r13, %rsi
	movq %r14, %r13
	movq 8(%rax), %rdi
	movq %r13, %rdx
	callq cli_cmd_check_render_errors_and_warnings
	movq %rax, (%r12)
.Lbb23:
	movq %rax, (%rbx)
	jmp .Lbb28
.Lbb24:
	movq %r14, %rsi
	movq 8(%rax), %rdi
	leaq str133(%rip), %rdx
	callq cli_cmd_check_render_phase_errors
	movq %rax, (%rbx)
	jmp .Lbb28
.Lbb26:
	movq %r14, %rsi
	movq 8(%rax), %rdi
	leaq str120(%rip), %rdx
	callq cli_cmd_check_render_phase_errors
.Lbb28:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_check_check_file, @function
.size cli_cmd_check_check_file, .-cli_cmd_check_check_file
/* end function cli_cmd_check_check_file */

.text
.balign 16
cli_cmd_check_render_check_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	callq donna_list_is_empty
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb31
	leaq donna_nil(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cmd_check_render_warnings
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_list_length
	movq %rax, %rdi
	movq %rdi, %r12
	leaq str169(%rip), %rdi
	callq utilities_colors_yellow
	movq %r12, %rdi
	movq %rax, %r12
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq str171(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str174(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %rbx
	leaq str178(%rip), %rsi
	callq donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str180(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	jmp .Lbb32
.Lbb31:
	leaq str162(%rip), %rdi
	callq utilities_colors_green
	movq %rax, %rdi
	movq %rdi, %rbx
	leaq str164(%rip), %rdi
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
.Lbb32:
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_check_render_check_ok, @function
.size cli_cmd_check_render_check_ok, .-cli_cmd_check_render_check_ok
/* end function cli_cmd_check_render_check_ok */

.text
.balign 16
cli_cmd_check_render_errors_and_warnings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdx, %rsi
	movq %rdi, %rbx
	leaq donna_nil(%rip), %rdx
	movq %rsi, %r13
	movq %rbx, %rdi
	callq cli_cmd_check_render_errors
	movq %r13, %rsi
	movq %rax, %rdi
	leaq donna_nil(%rip), %rdx
	movq %rdi, %r13
	movq %r12, %rdi
	callq cli_cmd_check_render_warnings
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_list_append
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_list_length
	movq %r12, %rdi
	movq %rax, %r12
	callq donna_list_length
	movq %r12, %rdi
	movq %rax, %r13
	cmpq $0, %r13
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb36
	movq %rdi, %r12
	leaq str204(%rip), %rdi
	callq utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq donna_int_to_string
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	leaq str206(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str209(%rip), %rsi
	callq __rt_str_concat
	movq %r13, %rdi
	movq %rax, %r13
	callq donna_int_to_string
	movq %r13, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str213(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	movq %rbx, %rdi
	jmp .Lbb37
.Lbb36:
	movq %rdi, %r12
	leaq str195(%rip), %rdi
	callq utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq str197(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str200(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
.Lbb37:
	movq %rsi, %rbx
	leaq str218(%rip), %rsi
	callq donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str220(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_check_render_errors_and_warnings, @function
.size cli_cmd_check_render_errors_and_warnings, .-cli_cmd_check_render_errors_and_warnings
/* end function cli_cmd_check_render_errors_and_warnings */

.text
.balign 16
cli_cmd_check_render_phase_errors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	leaq donna_nil(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cmd_check_render_errors
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_list_length
	movq %rax, %rdi
	movq %rdi, %r12
	leaq str225(%rip), %rdi
	callq utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq str227(%rip), %rdi
	callq __rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq str230(%rip), %rsi
	callq __rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str233(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %rbx
	leaq str237(%rip), %rsi
	callq donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str239(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_check_render_phase_errors, @function
.size cli_cmd_check_render_phase_errors, .-cli_cmd_check_render_phase_errors
/* end function cli_cmd_check_render_phase_errors */

.text
.balign 16
cli_cmd_check_render_errors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb43
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rsi, %r14
	callq errors_reporter_render_error
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq cli_cmd_check_render_errors
	jmp .Lbb45
.Lbb43:
	movq %rbx, %rdi
	callq donna_list_reverse
.Lbb45:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_check_render_errors, @function
.size cli_cmd_check_render_errors, .-cli_cmd_check_render_errors
/* end function cli_cmd_check_render_errors */

.text
.balign 16
cli_cmd_check_render_warnings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb48
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rsi, %r14
	callq errors_reporter_render_warning
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq cli_cmd_check_render_warnings
	jmp .Lbb50
.Lbb48:
	movq %rbx, %rdi
	callq donna_list_reverse
.Lbb50:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_check_render_warnings, @function
.size cli_cmd_check_render_warnings, .-cli_cmd_check_render_warnings
/* end function cli_cmd_check_render_warnings */

.text
.balign 16
cli_cmd_check_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb59
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb55
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb56
.Lbb55:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str295(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb56:
	cmpl $0, %eax
	jnz .Lbb58
	movq 16(%rdi), %rdi
	callq cli_cmd_check_first_positional
	jmp .Lbb60
.Lbb58:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp .Lbb60
.Lbb59:
	leaq str282(%rip), %rax
.Lbb60:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_check_first_positional, @function
.size cli_cmd_check_first_positional, .-cli_cmd_check_first_positional
/* end function cli_cmd_check_first_positional */

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
