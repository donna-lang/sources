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
str52:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str66:
	.ascii "successful without errors"
	.byte 0
/* end data */

.data
.balign 8
str83:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str87:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str89:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str130:
	.ascii "lex"
	.byte 0
/* end data */

.data
.balign 8
str143:
	.ascii "parse"
	.byte 0
/* end data */

.data
.balign 8
str172:
	.ascii "successful without errors or warnings"
	.byte 0
/* end data */

.data
.balign 8
str176:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
str178:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str181:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str185:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str187:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str202:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str204:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str207:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str211:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str213:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str216:
	.ascii " error(s), "
	.byte 0
/* end data */

.data
.balign 8
str220:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str225:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str227:
	.byte 10
	.byte 10
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
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str240:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str244:
	.byte 10
	.byte 10
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
str289:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str302:
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
	movq %rax, %r13
	movq %rdi, %rbx
	callq builder_scanner_project_name
	movq %rbx, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %rbx
	callq builder_scanner_project_build_dir
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	callq builder_scanner_project_dev_dir
	movq %rbx, %rdi
	movq %rax, -8(%rbp)
	movq %rdi, %rbx
	callq builder_scanner_project_dev_artifacts_dir
	movq %rbx, %rdi
	movq %rax, %r14
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq -8(%rbp), %rdi
	callq donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq %r14, %rdi
	callq donna_files_mkdir
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq -16(%rbp), %rdi
	callq utilities_logger_checking
	movq %r15, %rsi
	movq %rbx, %rdi
	movq %rsi, %r15
	leaq str27(%rip), %rsi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq donna_files_join
	movq %r15, %rsi
	movq %rax, %rdi
	callq builder_dependencies_resolve_deps_checked
	movq %r14, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb11
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rdx, %r12
	leaq donna_nil(%rip), %rdx
	callq cli_cmd_check_compile_deps
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb10
	movq 8(%rax), %r14
	callq builder_scanner_project_src_dir
	movq %r14, %rcx
	movq %r12, %rdx
	movq %rax, %rdi
	movl $0, %r8d
	leaq str52(%rip), %rsi
	callq builder_pipeline_compile_dir
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb8
	callq donna_time_now_us
	movq %rax, %rdi
	subq %r13, %rdi
	callq utilities_logger_check_ok
	leaq str66(%rip), %rdi
	callq utilities_logger_check_success
	movq %rax, (%r12)
	jmp .Lbb9
.Lbb8:
	movq 8(%rax), %rax
	movq %rax, (%r12)
.Lbb9:
	movq %rax, (%rbx)
	jmp .Lbb12
.Lbb10:
	movq 8(%rax), %rax
	movq %rax, (%rbx)
	jmp .Lbb12
.Lbb11:
	movq 8(%rax), %rax
.Lbb12:
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
	movq %rdx, %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb17
	movq 8(%rdi), %r14
	movq 16(%rdi), %rbx
	movq %rbx, -16(%rbp)
	movq %rsi, %rbx
	leaq str83(%rip), %rsi
	movq %rbx, %rdi
	callq donna_files_join
	movq %rax, %rdi
	movq %rdi, %r12
	movq %r14, %rdi
	callq builder_dependencies_dep_name
	movq %r12, %rdi
	movq %rax, %rsi
	callq donna_files_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq str87(%rip), %rsi
	movq %rdi, %rbx
	callq donna_files_join
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r15
	movq %rsi, %r12
	leaq str89(%rip), %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_files_join
	movq %rax, %rdi
	callq donna_files_mkdir
	movq %rbx, %rdi
	movq -16(%rbp), %rbx
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
	movq %r13, %rcx
	callq builder_pipeline_compile_dir
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb16
	movq 8(%rax), %rax
	movq %rsi, %r13
	movq (%rax), %rsi
	movq %rdi, %r12
	movq %rdx, %rdi
	callq donna_list_append
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq cli_cmd_check_compile_deps
	movq %rax, (%rbx)
	jmp .Lbb19
.Lbb16:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb19
.Lbb17:
	movq %r13, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdx
	movq $0, (%rax)
	movq %rdx, 8(%rax)
.Lbb19:
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
	jnz .Lbb29
	movq 8(%rax), %rdi
	callq compiler_parser_parser_parse
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb27
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
	jz .Lbb24
	callq donna_time_now_us
	movq %rax, %rdi
	subq %r15, %rdi
	callq utilities_logger_check_ok
	movq %r14, %rsi
	movq %r13, %rdi
	callq cli_cmd_check_render_check_ok
	movq %rax, (%r12)
	jmp .Lbb26
.Lbb24:
	movq %r13, %rsi
	movq %r14, %r13
	movq 8(%rax), %rdi
	movq %r13, %rdx
	callq cli_cmd_check_render_errors_and_warnings
	movq %rax, (%r12)
.Lbb26:
	movq %rax, (%rbx)
	jmp .Lbb31
.Lbb27:
	movq %r14, %rsi
	movq 8(%rax), %rdi
	leaq str143(%rip), %rdx
	callq cli_cmd_check_render_phase_errors
	movq %rax, (%rbx)
	jmp .Lbb31
.Lbb29:
	movq %r14, %rsi
	movq 8(%rax), %rdi
	leaq str130(%rip), %rdx
	callq cli_cmd_check_render_phase_errors
.Lbb31:
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
	jz .Lbb34
	leaq donna_nil(%rip), %rdx
	movq %rdi, %rbx
	callq cli_cmd_check_render_warnings
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_list_length
	movq %rax, %rdi
	movq %rdi, %r12
	leaq str176(%rip), %rdi
	callq utilities_colors_yellow
	movq %r12, %rdi
	movq %rax, %r12
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq str178(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str181(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %rbx
	leaq str185(%rip), %rsi
	callq donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str187(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	jmp .Lbb35
.Lbb34:
	leaq str172(%rip), %rdi
	callq utilities_logger_check_success
.Lbb35:
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
	jz .Lbb39
	movq %rdi, %r12
	leaq str211(%rip), %rdi
	callq utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq donna_int_to_string
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	leaq str213(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str216(%rip), %rsi
	callq __rt_str_concat
	movq %r13, %rdi
	movq %rax, %r13
	callq donna_int_to_string
	movq %r13, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str220(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rsi
	movq %rbx, %rdi
	jmp .Lbb40
.Lbb39:
	movq %rdi, %r12
	leaq str202(%rip), %rdi
	callq utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq str204(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str207(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
.Lbb40:
	movq %rsi, %rbx
	leaq str225(%rip), %rsi
	callq donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str227(%rip), %rsi
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
	leaq str232(%rip), %rdi
	callq utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq str234(%rip), %rdi
	callq __rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq str237(%rip), %rsi
	callq __rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str240(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %rbx
	leaq str244(%rip), %rsi
	callq donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str246(%rip), %rsi
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
	jz .Lbb46
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
	jmp .Lbb48
.Lbb46:
	movq %rbx, %rdi
	callq donna_list_reverse
.Lbb48:
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
	jz .Lbb51
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
	jmp .Lbb53
.Lbb51:
	movq %rbx, %rdi
	callq donna_list_reverse
.Lbb53:
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
	jz .Lbb62
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb58
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb59
.Lbb58:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str302(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb59:
	cmpl $0, %eax
	jnz .Lbb61
	movq 16(%rdi), %rdi
	callq cli_cmd_check_first_positional
	jmp .Lbb63
.Lbb61:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp .Lbb63
.Lbb62:
	leaq str289(%rip), %rax
.Lbb63:
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
