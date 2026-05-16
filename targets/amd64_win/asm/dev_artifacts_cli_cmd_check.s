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
str75:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str79:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str81:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str122:
	.ascii "lex"
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii "parse"
	.byte 0
/* end data */

.data
.balign 8
str164:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
str166:
	.ascii "  no errors or warnings"
	.byte 0
/* end data */

.data
.balign 8
str171:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
str173:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str176:
	.ascii " warning(s)"
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
str182:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str197:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str199:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str202:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str206:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str208:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str211:
	.ascii " error(s), "
	.byte 0
/* end data */

.data
.balign 8
str215:
	.ascii " warning(s)"
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
str222:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str227:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str229:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str232:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str235:
	.ascii " error(s)"
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
str241:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str284:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str297:
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
	pushq %rsi
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
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb2
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq cli_cmd_check_check_project
	subq $-32, %rsp
	jmp Lbb3
Lbb2:
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
Lbb3:
	popq %rsi
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
	leaq str27(%rip), %rdx
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
	jnz Lbb8
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
	leaq str42(%rip), %rdx
	callq builder_pipeline_compile_dir
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb7
	subq $32, %rsp
	callq donna_time_now_us
	subq $-32, %rsp
	movq %rax, %rcx
	subq %rdi, %rcx
	subq $32, %rsp
	callq utilities_logger_check_ok
	subq $-32, %rsp
	subq $32, %rsp
	leaq str56(%rip), %rcx
	callq utilities_colors_green
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str58(%rip), %rcx
	callq utilities_colors_dim
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb9
Lbb7:
	movq 8(%rax), %rax
	movq %rax, (%rsi)
	jmp Lbb9
Lbb8:
	movq 8(%rax), %rax
Lbb9:
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
	movq %r8, %rbx
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb14
	movq 8(%rcx), %r12
	movq 16(%rcx), %rsi
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str75(%rip), %rdx
	movq %rdi, %rcx
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
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq str79(%rip), %rdx
	movq %rcx, %rdi
	callq donna_files_join
	movq %r13, %rdx
	movq %rdi, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str81(%rip), %rdx
	movq %rcx, %r14
	movq %rdi, %rcx
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
	movq %rbx, %r9
	callq builder_pipeline_compile_dir
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdi
	cmpq $1, %rdi
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb13
	movq 8(%rax), %rax
	movq %rdx, %rbx
	movq (%rax), %rdx
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r8, %rcx
	callq donna_list_append
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_check_compile_deps
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb16
Lbb13:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb16
Lbb14:
	movq %rbx, %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %r8
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r8, 8(%rax)
Lbb16:
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
	jnz Lbb26
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
	jnz Lbb24
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
	jz Lbb21
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
	jmp Lbb23
Lbb21:
	movq %rbx, %rdx
	movq %r12, %rbx
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rbx, %r8
	callq cli_cmd_check_render_errors_and_warnings
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb23:
	movq %rax, (%rsi)
	jmp Lbb28
Lbb24:
	movq %r12, %rdx
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq str135(%rip), %r8
	callq cli_cmd_check_render_phase_errors
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb28
Lbb26:
	movq %r12, %rdx
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq str122(%rip), %r8
	callq cli_cmd_check_render_phase_errors
	subq $-32, %rsp
Lbb28:
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
	jz Lbb31
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
	leaq str171(%rip), %rcx
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
	leaq str173(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str176(%rip), %rdx
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
	leaq str180(%rip), %rdx
	callq donna_string_join
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str182(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb32
Lbb31:
	subq $32, %rsp
	leaq str164(%rip), %rcx
	callq utilities_colors_green
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str166(%rip), %rcx
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb32:
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
	jz Lbb36
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str206(%rip), %rcx
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
	leaq str208(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str211(%rip), %rdx
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
	leaq str215(%rip), %rdx
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
	jmp Lbb37
Lbb36:
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str197(%rip), %rcx
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
Lbb37:
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str220(%rip), %rdx
	callq donna_string_join
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str222(%rip), %rdx
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
	leaq str227(%rip), %rcx
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
	leaq str229(%rip), %rcx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str232(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str235(%rip), %rdx
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
	leaq str239(%rip), %rdx
	callq donna_string_join
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str241(%rip), %rdx
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
	jz Lbb43
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
	jmp Lbb45
Lbb43:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb45:
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
	jz Lbb48
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
	jmp Lbb50
Lbb48:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb50:
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
	jz Lbb59
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb55
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb56
Lbb55:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str297(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb56:
	cmpl $0, %eax
	jnz Lbb58
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_check_first_positional
	subq $-32, %rsp
	jmp Lbb60
Lbb58:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb60
Lbb59:
	leaq str284(%rip), %rax
Lbb60:
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

