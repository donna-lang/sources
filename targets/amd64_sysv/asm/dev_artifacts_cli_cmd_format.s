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
	pushq %rbx
	callq cli_cmd_format_first_positional
	movq %rax, %rdi
	leaq str1(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_ends_with
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb2
	callq cli_cmd_format_format_project
	jmp .Lbb3
.Lbb2:
	callq cli_cmd_format_format_file
.Lbb3:
	popq %rbx
	leave
	ret
.type cli_cmd_format_run, @function
.size cli_cmd_format_run, .-cli_cmd_format_run
/* end function cli_cmd_format_run */

.text
.balign 16
cli_cmd_format_format_project:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	callq builder_scanner_scan
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb8
	movq 8(%rax), %rdi
	callq builder_scanner_project_src_dir
	movq %rax, %rbx
	callq donna_time_now_us
	movq %rbx, %rdi
	movq %rax, %r12
	leaq donna_nil(%rip), %rsi
	callq cli_cmd_format_find_donna_files
	movq %rax, %rdi
	movl $0, %esi
	callq cli_cmd_format_format_files
	movq %rax, %rbx
	callq donna_time_now_us
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq %rax, %rdi
	subq %r12, %rdi
	callq utilities_logger_fmt_ok
	movq %rbx, %rdi
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb7
	callq donna_string_from_int
	movq %rax, %rsi
	leaq str41(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str44(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rax, (%rbx)
	jmp .Lbb9
.Lbb7:
	leaq str39(%rip), %rdi
	callq utilities_colors_dim
	movq %rax, (%rbx)
	jmp .Lbb9
.Lbb8:
	movq 8(%rax), %rbx
	leaq str20(%rip), %rdi
	callq utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq str22(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
.Lbb9:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_format_format_project, @function
.size cli_cmd_format_format_project, .-cli_cmd_format_format_project
/* end function cli_cmd_format_format_project */

.text
.balign 16
cli_cmd_format_find_donna_files:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq donna_files_list_dir
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	callq cli_cmd_format_collect_entries
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_format_find_donna_files, @function
.size cli_cmd_format_find_donna_files, .-cli_cmd_format_find_donna_files
/* end function cli_cmd_format_find_donna_files */

.text
.balign 16
cli_cmd_format_collect_entries:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r14
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb23
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %r12, -16(%rbp)
	movq %rsi, %r15
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq donna_files_join
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movq %r13, %rdi
	callq donna_files_is_dir
	movq %r15, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb20
	movq %rsi, %r15
	leaq str69(%rip), %rsi
	callq donna_string_ends_with
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz .Lbb17
	movq %r14, (%r13)
	movq %r15, %rsi
	movq %r14, %rax
	jmp .Lbb18
.Lbb17:
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %r12, %rdi
	movq -16(%rbp), %r12
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
.Lbb18:
	movq %rax, (%rbx)
	movq %r12, %rdi
	jmp .Lbb22
.Lbb20:
	movq %r13, %rdi
	movq %r14, %rax
	movq %rsi, %r13
	movq %rax, %rsi
	callq cli_cmd_format_find_donna_files
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, (%rbx)
.Lbb22:
	movq %rax, %rdx
	callq cli_cmd_format_collect_entries
	jmp .Lbb24
.Lbb23:
	movq %r14, %rax
.Lbb24:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_format_collect_entries, @function
.size cli_cmd_format_collect_entries, .-cli_cmd_format_collect_entries
/* end function cli_cmd_format_collect_entries */

.text
.balign 16
cli_cmd_format_format_files:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb27
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	callq cli_cmd_format_format_one
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	movq %rax, %rsi
	addq %rcx, %rsi
	callq cli_cmd_format_format_files
	jmp .Lbb28
.Lbb27:
	movq %rbx, %rax
.Lbb28:
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_format_format_files, @function
.size cli_cmd_format_format_files, .-cli_cmd_format_format_files
/* end function cli_cmd_format_format_files */

.text
.balign 16
cli_cmd_format_path_to_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	leaq str97(%rip), %rsi
	movq %rbx, %rdi
	callq donna_string_index_of
	xchgq %rax, %rbx
	cmpq $-1, %rbx
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb31
	movq %rbx, %r13
	addq $4, %r13
	movq %r12, %rdi
	callq donna_string_length
	movq %r13, %rsi
	movq %rax, %rcx
	movq %r12, %rax
	subq %rbx, %rcx
	movq %rcx, %rdx
	subq $4, %rdx
	movq %rax, %rdi
	callq donna_string_slice
	jmp .Lbb32
.Lbb31:
	movq %r12, %rax
.Lbb32:
	movq %rax, %r12
	leaq str112(%rip), %rsi
	movq %r12, %rdi
	callq donna_string_ends_with
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb35
	movq %r12, (%rbx)
	movq %r12, %rax
	jmp .Lbb36
.Lbb35:
	movq %r12, %rdi
	callq donna_string_length
	movq %rax, %rcx
	movq %r12, %rax
	movq %rcx, %rdx
	subq $6, %rdx
	movl $0, %esi
	movq %rax, %rdi
	callq donna_string_slice
	movq %rax, (%rbx)
.Lbb36:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_format_path_to_module, @function
.size cli_cmd_format_path_to_module, .-cli_cmd_format_path_to_module
/* end function cli_cmd_format_path_to_module */

.text
.balign 16
cli_cmd_format_format_one:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq donna_files_read
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	movq %rdi, %rbx
	callq tools_fmt_formatter_format_source
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb43
	movq 8(%rax), %rsi
	movq %rsi, %rbx
	callq donna_string_equal
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb41
	movq %r12, %rdi
	callq donna_files_write
	movq %r12, %rsi
	movq %rsi, %rdi
	callq cli_cmd_format_path_to_module
	movq %rax, %rdi
	callq utilities_logger_formatting
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb46
.Lbb41:
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb46
.Lbb43:
	movq %r12, %rsi
	leaq str133(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_logger_step
	movl $0, %eax
.Lbb46:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_format_format_one, @function
.size cli_cmd_format_format_one, .-cli_cmd_format_format_one
/* end function cli_cmd_format_format_one */

.text
.balign 16
cli_cmd_format_format_file:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %r12
	callq donna_files_exists
	cmpq $0, %rax
	jz .Lbb54
	movq %r12, %rdi
	callq donna_files_read
	movq %rax, %rdi
	movq %r12, %rsi
	movq %rdi, %rbx
	callq tools_fmt_formatter_format_source
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb53
	movq 8(%rax), %rsi
	movq %rsi, %r13
	callq donna_string_equal
	movq %r13, %rsi
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb51
	movq %rdi, %r13
	callq donna_files_write
	movq %r13, %rdi
	movq %rdi, %r13
	leaq str188(%rip), %rdi
	callq utilities_colors_green
	movq %rax, %rdi
	leaq str190(%rip), %rsi
	callq __rt_str_concat
	movq %r13, %rdi
	movq %rax, %r13
	callq utilities_colors_dim
	movq %r13, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, (%r12)
	jmp .Lbb52
.Lbb51:
	leaq str182(%rip), %rdi
	callq utilities_colors_green
	movq %rax, %rdi
	movq %rdi, %r13
	leaq str184(%rip), %rdi
	callq utilities_colors_dim
	movq %r13, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, (%r12)
.Lbb52:
	movq %rax, (%rbx)
	jmp .Lbb56
.Lbb53:
	movq 8(%rax), %r12
	leaq str169(%rip), %rdi
	callq utilities_colors_red
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq str171(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb56
.Lbb54:
	movq %r12, %rdi
	movq %rdi, %rbx
	leaq str153(%rip), %rdi
	callq utilities_colors_red
	movq %rax, %rdi
	leaq str155(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
.Lbb56:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_format_format_file, @function
.size cli_cmd_format_format_file, .-cli_cmd_format_format_file
/* end function cli_cmd_format_format_file */

.text
.balign 16
cli_cmd_format_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb65
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb61
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb62
.Lbb61:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str216(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb62:
	cmpl $0, %eax
	jnz .Lbb64
	movq 16(%rdi), %rdi
	callq cli_cmd_format_first_positional
	jmp .Lbb66
.Lbb64:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp .Lbb66
.Lbb65:
	leaq str203(%rip), %rax
.Lbb66:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_format_first_positional, @function
.size cli_cmd_format_first_positional, .-cli_cmd_format_first_positional
/* end function cli_cmd_format_first_positional */

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
