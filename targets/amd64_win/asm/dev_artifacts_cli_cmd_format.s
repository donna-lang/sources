.data
.balign 8
str1:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str20:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str22:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str39:
	.ascii "  no changes"
	.byte 0
/* end data */

.data
.balign 8
str41:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str44:
	.ascii " file(s) changed"
	.byte 0
/* end data */

.data
.balign 8
str69:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str97:
	.ascii "src/"
	.byte 0
/* end data */

.data
.balign 8
str112:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str133:
	.ascii "skip (parse error): "
	.byte 0
/* end data */

.data
.balign 8
str153:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str155:
	.ascii ": file not found: "
	.byte 0
/* end data */

.data
.balign 8
str169:
	.ascii "error"
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
str182:
	.ascii "formatted"
	.byte 0
/* end data */

.data
.balign 8
str184:
	.ascii "  no changes"
	.byte 0
/* end data */

.data
.balign 8
str188:
	.ascii "formatted"
	.byte 0
/* end data */

.data
.balign 8
str190:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str203:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str216:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_format_run
cli_cmd_format_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq cli_cmd_format_first_positional
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str1(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_ends_with
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb2
	subq $32, %rsp
	callq cli_cmd_format_format_project
	subq $-32, %rsp
	jmp Lbb3
Lbb2:
	subq $32, %rsp
	callq cli_cmd_format_format_file
	subq $-32, %rsp
Lbb3:
	popq %rsi
	leave
	ret
/* end function cli_cmd_format_run */

.text
.balign 16
cli_cmd_format_format_project:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq builder_scanner_scan
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb8
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq builder_scanner_project_src_dir
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_time_now_us
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq cli_cmd_format_find_donna_files
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movl $0, %edx
	callq cli_cmd_format_format_files
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_time_now_us
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	subq %rdi, %rcx
	subq $32, %rsp
	callq utilities_logger_fmt_ok
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb7
	subq $32, %rsp
	callq donna_string_from_int
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str41(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str44(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb9
Lbb7:
	subq $32, %rsp
	leaq str39(%rip), %rcx
	callq utilities_colors_dim
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb9
Lbb8:
	movq 8(%rax), %rsi
	subq $32, %rsp
	leaq str20(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str22(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb9:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_format_format_project */

.text
.balign 16
cli_cmd_format_find_donna_files:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_files_list_dir
	movq %rdi, %r8
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_format_collect_entries
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_format_find_donna_files */

.text
.balign 16
cli_cmd_format_collect_entries:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r8, %r12
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb23
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %r13
	movq %rcx, %rdx
	movq %rcx, %rsi
	movq %r13, %rcx
	callq donna_files_join
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq donna_files_is_dir
	movq %r13, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb20
	subq $32, %rsp
	movq %rdx, %r14
	leaq str69(%rip), %rdx
	callq donna_string_ends_with
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb17
	movq %r12, (%rbx)
	movq %r14, %rdx
	movq %r12, %rax
	jmp Lbb18
Lbb17:
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %r13, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
Lbb18:
	movq %rax, (%rsi)
	movq %rdi, %rcx
	jmp Lbb22
Lbb20:
	movq %rbx, %rcx
	movq %r12, %rax
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rax, %rdx
	callq cli_cmd_format_find_donna_files
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb22:
	subq $32, %rsp
	movq %rax, %r8
	callq cli_cmd_format_collect_entries
	subq $-32, %rsp
	jmp Lbb24
Lbb23:
	movq %r12, %rax
Lbb24:
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
/* end function cli_cmd_format_collect_entries */

.text
.balign 16
cli_cmd_format_format_files:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb27
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq cli_cmd_format_format_one
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	addq %rax, %rdx
	subq $32, %rsp
	callq cli_cmd_format_format_files
	subq $-32, %rsp
	jmp Lbb28
Lbb27:
	movq %rsi, %rax
Lbb28:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_format_format_files */

.text
.balign 16
cli_cmd_format_path_to_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str97(%rip), %rdx
	movq %rsi, %rcx
	callq donna_string_index_of
	xchgq %rax, %rsi
	subq $-32, %rsp
	cmpq $-1, %rsi
	movq %rax, %rdi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb31
	movq %rsi, %rbx
	addq $4, %rbx
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_string_length
	movq %rbx, %rdx
	movq %rax, %rcx
	movq %rdi, %rax
	subq $-32, %rsp
	subq %rsi, %rcx
	movq %rcx, %r8
	subq $4, %r8
	subq $32, %rsp
	movq %rax, %rcx
	callq donna_string_slice
	subq $-32, %rsp
	jmp Lbb32
Lbb31:
	movq %rdi, %rax
Lbb32:
	movq %rax, %rdi
	subq $32, %rsp
	leaq str112(%rip), %rdx
	movq %rdi, %rcx
	callq donna_string_ends_with
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb35
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb36
Lbb35:
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_string_length
	movq %rax, %rcx
	movq %rdi, %rax
	subq $-32, %rsp
	movq %rcx, %r8
	subq $6, %r8
	subq $32, %rsp
	movl $0, %edx
	movq %rax, %rcx
	callq donna_string_slice
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb36:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_format_path_to_module */

.text
.balign 16
cli_cmd_format_format_one:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_files_read
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq tools_fmt_formatter_format_source
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rdx, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb43
	movq 8(%rax), %rdx
	subq $32, %rsp
	movq %rdx, %rsi
	callq donna_string_equal
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb41
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_files_write
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rcx
	callq cli_cmd_format_path_to_module
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_logger_formatting
	subq $-32, %rsp
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb46
Lbb41:
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb46
Lbb43:
	movq %rdi, %rdx
	subq $32, %rsp
	leaq str133(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_logger_step
	subq $-32, %rsp
	movl $0, %eax
Lbb46:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_format_format_one */

.text
.balign 16
cli_cmd_format_format_file:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rdi
	callq donna_files_exists
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb54
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_files_read
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rdx
	movq %rcx, %rsi
	callq tools_fmt_formatter_format_source
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb53
	movq 8(%rax), %rdx
	subq $32, %rsp
	movq %rdx, %rbx
	callq donna_string_equal
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb51
	subq $32, %rsp
	movq %rcx, %rbx
	callq donna_files_write
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str188(%rip), %rcx
	callq utilities_colors_green
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str190(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb52
Lbb51:
	subq $32, %rsp
	leaq str182(%rip), %rcx
	callq utilities_colors_green
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str184(%rip), %rcx
	callq utilities_colors_dim
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb52:
	movq %rax, (%rsi)
	jmp Lbb56
Lbb53:
	movq 8(%rax), %rdi
	subq $32, %rsp
	leaq str169(%rip), %rcx
	callq utilities_colors_red
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str171(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb56
Lbb54:
	movq %rdi, %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str153(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str155(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb56:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_format_format_file */

.text
.balign 16
cli_cmd_format_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb65
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb61
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb62
Lbb61:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str216(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb62:
	cmpl $0, %eax
	jnz Lbb64
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_format_first_positional
	subq $-32, %rsp
	jmp Lbb66
Lbb64:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb66
Lbb65:
	leaq str203(%rip), %rax
Lbb66:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_format_first_positional */

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

