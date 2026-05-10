.data
.balign 8
_str10:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str12:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str19:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str28:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str30:
	.ascii ": entry point not found: "
	.byte 0
/* end data */

.data
.balign 8
_str45:
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
_str65:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str77:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str84:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
_str86:
	.ascii "  no errors"
	.byte 0
/* end data */

.data
.balign 8
_str102:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str106:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str108:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str148:
	.ascii "lex"
	.byte 0
/* end data */

.data
.balign 8
_str161:
	.ascii "parse"
	.byte 0
/* end data */

.data
.balign 8
_str190:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
_str192:
	.ascii "  no errors or warnings"
	.byte 0
/* end data */

.data
.balign 8
_str197:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
_str199:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str202:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
_str206:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str208:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str223:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str225:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str228:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
_str232:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str234:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str237:
	.ascii " error(s), "
	.byte 0
/* end data */

.data
.balign 8
_str241:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
_str246:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str248:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str253:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str255:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str258:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str261:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
_str265:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str267:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str310:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str323:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl _cli_cmd_check_run
_cli_cmd_check_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	callq _cli_cmd_check_first_positional
	movq %rax, %rdi
	movq %rdi, %rbx
	callq _builder_scanner_scan
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb5
	movq 8(%rax), %r13
	movq %r13, %rdi
	callq _builder_scanner_project_name
	movq %rax, %rdi
	movq %rdi, %r12
	movq %r13, %rdi
	callq _builder_scanner_project_src_dir
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rsi, %r13
	leaq _str19(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rdi
	movq %rax, %rsi
	callq _donna_files_join
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _donna_files_exists
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb3
	callq _cli_cmd_check_check_project
	movq %rax, (%rbx)
	jmp Lbb6
Lbb3:
	movq %r12, %rdi
	movq %rdi, %r12
	leaq _str28(%rip), %rdi
	callq _utilities_colors_red
	movq %rax, %rdi
	leaq _str30(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq _utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb6
Lbb5:
	movq 8(%rax), %rbx
	leaq _str10(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str12(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
Lbb6:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_run */

.text
.balign 16
_cli_cmd_check_check_project:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r13
	movq %rdi, %r15
	callq _donna_time_now_us
	movq %rax, -8(%rbp)
	movq %r13, %rdi
	callq _builder_scanner_project_name
	movq %rax, -16(%rbp)
	movq %r13, %rdi
	callq _builder_scanner_project_build_dir
	movq %rax, %rbx
	movq %r13, %rdi
	callq _builder_scanner_project_dev_dir
	movq %rax, %rdi
	movq %rdi, %r12
	movq %r13, %rdi
	callq _builder_scanner_project_dev_artifacts_dir
	movq %r12, %rdi
	movq %rax, %r14
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _donna_files_mkdir
	movq %r12, %rdi
	movq -8(%rbp), %r12
	callq _donna_files_mkdir
	movq %r13, %rdi
	movq %rdi, %r13
	movq %r14, %rdi
	callq _donna_files_mkdir
	movq %r13, %rdi
	movq %rdi, %r13
	movq -16(%rbp), %rdi
	callq _utilities_logger_checking
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rsi, %r15
	leaq _str45(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq _donna_files_join
	movq %r15, %rsi
	movq %rax, %rdi
	callq _builder_dependencies_resolve_deps
	movq %r14, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rdx, %rbx
	leaq _donna_nil(%rip), %rdx
	callq _cli_cmd_check_compile_deps
	movq %r13, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb11
	movq 8(%rax), %r13
	callq _builder_scanner_project_src_dir
	movq %r13, %rcx
	movq %rbx, %rdx
	movq %rax, %rdi
	movl $0, %r8d
	leaq _str65(%rip), %rsi
	callq _builder_pipeline_compile_dir
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb10
	callq _donna_time_now_us
	movq %rax, %rdi
	subq %r12, %rdi
	callq _utilities_logger_check_ok
	leaq _str84(%rip), %rdi
	callq _utilities_colors_green
	movq %rax, %rdi
	movq %rdi, %r12
	leaq _str86(%rip), %rdi
	callq _utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb12
Lbb10:
	movq 8(%rax), %r12
	leaq _str75(%rip), %rdi
	callq _utilities_colors_red
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str77(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb12
Lbb11:
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
Lbb12:
	movq %rbp, %rsp
	subq $64, %rsp
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
_cli_cmd_check_compile_deps:
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
	jz Lbb17
	movq 8(%rdi), %r14
	movq 16(%rdi), %r12
	movq %r12, -16(%rbp)
	movq %rsi, %r12
	leaq _str102(%rip), %rsi
	movq %r12, %rdi
	callq _donna_files_join
	movq %rax, %rdi
	movq %rdi, %r13
	movq %r14, %rdi
	callq _builder_dependencies_dep_name
	movq %r13, %rdi
	movq %rax, %rsi
	callq _donna_files_join
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str106(%rip), %rsi
	movq %rdi, %r12
	callq _donna_files_join
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r15
	movq %rsi, %r13
	leaq _str108(%rip), %rsi
	movq %rdi, %r12
	movq %r13, %rdi
	callq _donna_files_join
	movq %rax, %rdi
	callq _donna_files_mkdir
	movq %r12, %rdi
	movq -16(%rbp), %r12
	callq _donna_files_mkdir
	movq %r14, %rdi
	movq %rdi, %r14
	movq %r15, %rdi
	callq _donna_files_mkdir
	movq %r14, %rdi
	movq %rdi, %r14
	callq _builder_dependencies_dep_src_dir
	movq %r14, %rdi
	movq %rax, %r14
	callq _builder_dependencies_dep_name
	movq %r15, %rdx
	movq %r14, %rdi
	movq %rax, %rsi
	movl $0, %r8d
	movq %rbx, %rcx
	callq _builder_pipeline_compile_dir
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb16
	movq 8(%rax), %rax
	movq %rsi, %r13
	movq (%rax), %rsi
	callq _donna_list_append
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq _cli_cmd_check_compile_deps
	movq %rax, (%rbx)
	jmp Lbb19
Lbb16:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb19
Lbb17:
	movq %rbx, %rdi
	callq _donna_result_Ok
Lbb19:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_compile_deps */

.text
.balign 16
_cli_cmd_check_check_file:
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
	callq _donna_files_read
	movq %rax, %r14
	callq _donna_time_now_us
	movq %rax, %r15
	movq %r13, %rdi
	callq _utilities_logger_checking
	movq %rbx, %rsi
	movq %r14, %rdi
	callq _compiler_lexer_lexer_lex
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb29
	movq 8(%rax), %rdi
	callq _compiler_parser_parser_parse
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb27
	movq 8(%rax), %rdi
	movq %rdi, %r12
	callq _compiler_analysis_analyser_analyse
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r13
	callq _compiler_typesystem_checker_check_module
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb24
	callq _donna_time_now_us
	movq %rax, %rdi
	subq %r15, %rdi
	callq _utilities_logger_check_ok
	movq %r14, %rsi
	movq %r13, %rdi
	callq _cli_cmd_check_render_check_ok
	movq %rax, (%r12)
	jmp Lbb26
Lbb24:
	movq %r13, %rsi
	movq %r14, %r13
	movq 8(%rax), %rdi
	movq %r13, %rdx
	callq _cli_cmd_check_render_errors_and_warnings
	movq %rax, (%r12)
Lbb26:
	movq %rax, (%rbx)
	jmp Lbb31
Lbb27:
	movq %r14, %rsi
	movq 8(%rax), %rdi
	leaq _str161(%rip), %rdx
	callq _cli_cmd_check_render_phase_errors
	movq %rax, (%rbx)
	jmp Lbb31
Lbb29:
	movq %r14, %rsi
	movq 8(%rax), %rdi
	leaq _str148(%rip), %rdx
	callq _cli_cmd_check_render_phase_errors
Lbb31:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_check_file */

.text
.balign 16
_cli_cmd_check_render_check_ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	callq _donna_list_is_empty
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $1, %rax
	jz Lbb34
	leaq _donna_nil(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cmd_check_render_warnings
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_list_length
	movq %rax, %rdi
	movq %rdi, %r12
	leaq _str197(%rip), %rdi
	callq _utilities_colors_yellow
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq _str199(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str202(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %rbx
	leaq _str206(%rip), %rsi
	callq _donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str208(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	jmp Lbb35
Lbb34:
	leaq _str190(%rip), %rdi
	callq _utilities_colors_green
	movq %rax, %rdi
	movq %rdi, %rbx
	leaq _str192(%rip), %rdi
	callq _utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
Lbb35:
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_render_check_ok */

.text
.balign 16
_cli_cmd_check_render_errors_and_warnings:
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
	leaq _donna_nil(%rip), %rdx
	movq %rsi, %r13
	movq %rbx, %rdi
	callq _cli_cmd_check_render_errors
	movq %r13, %rsi
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rdx
	movq %rdi, %r13
	movq %r12, %rdi
	callq _cli_cmd_check_render_warnings
	movq %r13, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_list_length
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_list_length
	movq %r12, %rdi
	movq %rax, %r13
	cmpq $0, %r13
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb39
	movq %rdi, %r12
	leaq _str232(%rip), %rdi
	callq _utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_int_to_string
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	leaq _str234(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str237(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rdi
	movq %rax, %r13
	callq _donna_int_to_string
	movq %r13, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str241(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rsi
	movq %rbx, %rdi
	jmp Lbb40
Lbb39:
	movq %rdi, %r12
	leaq _str223(%rip), %rdi
	callq _utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq _str225(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str228(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
Lbb40:
	movq %rsi, %rbx
	leaq _str246(%rip), %rsi
	callq _donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str248(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_render_errors_and_warnings */

.text
.balign 16
_cli_cmd_check_render_phase_errors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	leaq _donna_nil(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cmd_check_render_errors
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_list_length
	movq %rax, %rdi
	movq %rdi, %r12
	leaq _str253(%rip), %rdi
	callq _utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq _str255(%rip), %rdi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str258(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str261(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %rbx
	leaq _str265(%rip), %rsi
	callq _donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str267(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_render_phase_errors */

.text
.balign 16
_cli_cmd_check_render_errors:
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
	jz Lbb46
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rsi, %r14
	callq _errors_reporter_render_error
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq _cli_cmd_check_render_errors
	jmp Lbb48
Lbb46:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb48:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_render_errors */

.text
.balign 16
_cli_cmd_check_render_warnings:
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
	jz Lbb51
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rsi, %r14
	callq _errors_reporter_render_warning
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq _cli_cmd_check_render_warnings
	jmp Lbb53
Lbb51:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb53:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_render_warnings */

.text
.balign 16
_cli_cmd_check_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb62
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb58
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb59
Lbb58:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str323(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb59:
	cmpl $0, %eax
	jnz Lbb61
	movq 16(%rdi), %rdi
	callq _cli_cmd_check_first_positional
	jmp Lbb63
Lbb61:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb63
Lbb62:
	leaq _str310(%rip), %rax
Lbb63:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_check_first_positional */

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

