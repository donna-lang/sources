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
_str27:
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
_str42:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str56:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
_str58:
	.ascii "  no errors"
	.byte 0
/* end data */

.data
.balign 8
_str74:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str78:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str80:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str120:
	.ascii "lex"
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.ascii "parse"
	.byte 0
/* end data */

.data
.balign 8
_str162:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
_str164:
	.ascii "  no errors or warnings"
	.byte 0
/* end data */

.data
.balign 8
_str169:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
_str171:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str174:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
_str178:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str180:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str195:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str197:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str200:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
_str204:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str206:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str209:
	.ascii " error(s), "
	.byte 0
/* end data */

.data
.balign 8
_str213:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
_str218:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str220:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str225:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str227:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str230:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str233:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
_str237:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str239:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str282:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str295:
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
	callq _cli_cmd_check_first_positional
	movq %rax, %rdi
	movq %rdi, %rbx
	callq _builder_scanner_scan
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb2
	movq 8(%rax), %rsi
	callq _cli_cmd_check_check_project
	jmp Lbb3
Lbb2:
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
Lbb3:
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
	movq %rsi, %rbx
	movq %rdi, %r15
	callq _donna_time_now_us
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	callq _builder_scanner_project_name
	movq %rbx, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %rbx
	callq _builder_scanner_project_build_dir
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	callq _builder_scanner_project_dev_dir
	movq %r13, %rdi
	movq %rax, -8(%rbp)
	movq %rdi, %r13
	callq _builder_scanner_project_dev_artifacts_dir
	movq %r13, %rdi
	movq %rax, %r14
	movq %rdi, %r13
	movq %rbx, %rdi
	callq _donna_files_mkdir
	movq %r13, %rdi
	movq %rdi, %r13
	movq -8(%rbp), %rdi
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
	leaq _str27(%rip), %rsi
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
	jnz Lbb8
	movq 8(%rax), %r13
	callq _builder_scanner_project_src_dir
	movq %r13, %rcx
	movq %rbx, %rdx
	movq %rax, %rdi
	movl $0, %r8d
	leaq _str42(%rip), %rsi
	callq _builder_pipeline_compile_dir
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb7
	callq _donna_time_now_us
	movq %rax, %rdi
	subq %r12, %rdi
	callq _utilities_logger_check_ok
	leaq _str56(%rip), %rdi
	callq _utilities_colors_green
	movq %rax, %rdi
	movq %rdi, %r12
	leaq _str58(%rip), %rdi
	callq _utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb9
Lbb7:
	movq 8(%rax), %rax
	movq %rax, (%rbx)
	jmp Lbb9
Lbb8:
	movq 8(%rax), %rax
Lbb9:
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
	jz Lbb14
	movq 8(%rdi), %r14
	movq 16(%rdi), %r12
	movq %r12, -16(%rbp)
	movq %rsi, %r12
	leaq _str74(%rip), %rsi
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
	leaq _str78(%rip), %rsi
	movq %rdi, %r12
	callq _donna_files_join
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r15
	movq %rsi, %r13
	leaq _str80(%rip), %rsi
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
	jnz Lbb13
	movq 8(%rax), %rax
	movq %rsi, %r13
	movq (%rax), %rsi
	callq _donna_list_append
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq _cli_cmd_check_compile_deps
	movq %rax, (%rbx)
	jmp Lbb16
Lbb13:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb16
Lbb14:
	movq %rbx, %rdi
	callq _donna_result_Ok
Lbb16:
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
	jnz Lbb26
	movq 8(%rax), %rdi
	callq _compiler_parser_parser_parse
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb24
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
	jz Lbb21
	callq _donna_time_now_us
	movq %rax, %rdi
	subq %r15, %rdi
	callq _utilities_logger_check_ok
	movq %r14, %rsi
	movq %r13, %rdi
	callq _cli_cmd_check_render_check_ok
	movq %rax, (%r12)
	jmp Lbb23
Lbb21:
	movq %r13, %rsi
	movq %r14, %r13
	movq 8(%rax), %rdi
	movq %r13, %rdx
	callq _cli_cmd_check_render_errors_and_warnings
	movq %rax, (%r12)
Lbb23:
	movq %rax, (%rbx)
	jmp Lbb28
Lbb24:
	movq %r14, %rsi
	movq 8(%rax), %rdi
	leaq _str133(%rip), %rdx
	callq _cli_cmd_check_render_phase_errors
	movq %rax, (%rbx)
	jmp Lbb28
Lbb26:
	movq %r14, %rsi
	movq 8(%rax), %rdi
	leaq _str120(%rip), %rdx
	callq _cli_cmd_check_render_phase_errors
Lbb28:
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
	jz Lbb31
	leaq _donna_nil(%rip), %rdx
	movq %rdi, %rbx
	callq _cli_cmd_check_render_warnings
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_list_length
	movq %rax, %rdi
	movq %rdi, %r12
	leaq _str169(%rip), %rdi
	callq _utilities_colors_yellow
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq _str171(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str174(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %rbx
	leaq _str178(%rip), %rsi
	callq _donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str180(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	jmp Lbb32
Lbb31:
	leaq _str162(%rip), %rdi
	callq _utilities_colors_green
	movq %rax, %rdi
	movq %rdi, %rbx
	leaq _str164(%rip), %rdi
	callq _utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
Lbb32:
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
	jz Lbb36
	movq %rdi, %r12
	leaq _str204(%rip), %rdi
	callq _utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_int_to_string
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	leaq _str206(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str209(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rdi
	movq %rax, %r13
	callq _donna_int_to_string
	movq %r13, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str213(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rsi
	movq %rbx, %rdi
	jmp Lbb37
Lbb36:
	movq %rdi, %r12
	leaq _str195(%rip), %rdi
	callq _utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq _str197(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str200(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
Lbb37:
	movq %rsi, %rbx
	leaq _str218(%rip), %rsi
	callq _donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str220(%rip), %rsi
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
	leaq _str225(%rip), %rdi
	callq _utilities_colors_error_header
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq _str227(%rip), %rdi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str230(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str233(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_bold
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %rbx
	leaq _str237(%rip), %rsi
	callq _donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str239(%rip), %rsi
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
	jz Lbb43
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
	jmp Lbb45
Lbb43:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb45:
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
	jz Lbb48
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
	jmp Lbb50
Lbb48:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb50:
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
	jz Lbb59
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb55
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb56
Lbb55:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str295(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb56:
	cmpl $0, %eax
	jnz Lbb58
	movq 16(%rdi), %rdi
	callq _cli_cmd_check_first_positional
	jmp Lbb60
Lbb58:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb60
Lbb59:
	leaq _str282(%rip), %rax
Lbb60:
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

