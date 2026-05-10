.data
.balign 8
_str1:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str20:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str22:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str39:
	.ascii "  no changes"
	.byte 0
/* end data */

.data
.balign 8
_str41:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
_str44:
	.ascii " file(s) changed"
	.byte 0
/* end data */

.data
.balign 8
_str69:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str97:
	.ascii "src/"
	.byte 0
/* end data */

.data
.balign 8
_str112:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.ascii "skip (parse error): "
	.byte 0
/* end data */

.data
.balign 8
_str153:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str155:
	.ascii ": file not found: "
	.byte 0
/* end data */

.data
.balign 8
_str169:
	.ascii "error"
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
_str182:
	.ascii "formatted"
	.byte 0
/* end data */

.data
.balign 8
_str184:
	.ascii "  no changes"
	.byte 0
/* end data */

.data
.balign 8
_str188:
	.ascii "formatted"
	.byte 0
/* end data */

.data
.balign 8
_str190:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str203:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str216:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl _cli_cmd_format_run
_cli_cmd_format_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _cli_cmd_format_first_positional
	movq %rax, %rdi
	leaq _str1(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_ends_with
	movq %rbx, %rdi
	cmpq $1, %rax
	jz Lbb2
	callq _cli_cmd_format_format_project
	jmp Lbb3
Lbb2:
	callq _cli_cmd_format_format_file
Lbb3:
	popq %rbx
	leave
	ret
/* end function cli_cmd_format_run */

.text
.balign 16
_cli_cmd_format_format_project:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	callq _builder_scanner_scan
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb8
	movq 8(%rax), %rdi
	callq _builder_scanner_project_src_dir
	movq %rax, %rbx
	callq _donna_time_now_us
	movq %rbx, %rdi
	movq %rax, %r12
	leaq _donna_nil(%rip), %rsi
	callq _cli_cmd_format_find_donna_files
	movq %rax, %rdi
	movl $0, %esi
	callq _cli_cmd_format_format_files
	movq %rax, %rbx
	callq _donna_time_now_us
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq %rax, %rdi
	subq %r12, %rdi
	callq _utilities_logger_fmt_ok
	movq %rbx, %rdi
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb7
	callq _donna_string_from_int
	movq %rax, %rsi
	leaq _str41(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str44(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_dim
	movq %rax, (%rbx)
	jmp Lbb9
Lbb7:
	leaq _str39(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, (%rbx)
	jmp Lbb9
Lbb8:
	movq 8(%rax), %rbx
	leaq _str20(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str22(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
Lbb9:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_format_format_project */

.text
.balign 16
_cli_cmd_format_find_donna_files:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq _donna_files_list_dir
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	callq _cli_cmd_format_collect_entries
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_format_find_donna_files */

.text
.balign 16
_cli_cmd_format_collect_entries:
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
	jz Lbb23
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %r12, -16(%rbp)
	movq %rsi, %r15
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq _donna_files_join
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_files_is_dir
	movq %r15, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb20
	movq %rsi, %r15
	leaq _str69(%rip), %rsi
	callq _donna_string_ends_with
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb17
	movq %r14, (%r13)
	movq %r15, %rsi
	movq %r14, %rax
	jmp Lbb18
Lbb17:
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r12, %rdi
	movq -16(%rbp), %r12
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
Lbb18:
	movq %rax, (%rbx)
	movq %r12, %rdi
	jmp Lbb22
Lbb20:
	movq %r13, %rdi
	movq %r14, %rax
	movq %rsi, %r13
	movq %rax, %rsi
	callq _cli_cmd_format_find_donna_files
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, (%rbx)
Lbb22:
	movq %rax, %rdx
	callq _cli_cmd_format_collect_entries
	jmp Lbb24
Lbb23:
	movq %r14, %rax
Lbb24:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_format_collect_entries */

.text
.balign 16
_cli_cmd_format_format_files:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb27
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	callq _cli_cmd_format_format_one
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	movq %rax, %rsi
	addq %rcx, %rsi
	callq _cli_cmd_format_format_files
	jmp Lbb28
Lbb27:
	movq %rbx, %rax
Lbb28:
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_format_format_files */

.text
.balign 16
_cli_cmd_format_path_to_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	leaq _str97(%rip), %rsi
	movq %rbx, %rdi
	callq _donna_string_index_of
	xchgq %rax, %rbx
	cmpq $-1, %rbx
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb31
	movq %rbx, %r13
	addq $4, %r13
	movq %r12, %rdi
	callq _donna_string_length
	movq %r13, %rsi
	movq %rax, %rcx
	movq %r12, %rax
	subq %rbx, %rcx
	movq %rcx, %rdx
	subq $4, %rdx
	movq %rax, %rdi
	callq _donna_string_slice
	jmp Lbb32
Lbb31:
	movq %r12, %rax
Lbb32:
	movq %rax, %r12
	leaq _str112(%rip), %rsi
	movq %r12, %rdi
	callq _donna_string_ends_with
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb35
	movq %r12, (%rbx)
	movq %r12, %rax
	jmp Lbb36
Lbb35:
	movq %r12, %rdi
	callq _donna_string_length
	movq %rax, %rcx
	movq %r12, %rax
	movq %rcx, %rdx
	subq $6, %rdx
	movl $0, %esi
	movq %rax, %rdi
	callq _donna_string_slice
	movq %rax, (%rbx)
Lbb36:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_format_path_to_module */

.text
.balign 16
_cli_cmd_format_format_one:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq _donna_files_read
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	movq %rdi, %rbx
	callq _tools_fmt_formatter_format_source
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb43
	movq 8(%rax), %rsi
	movq %rsi, %rbx
	callq _donna_string_equal
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb41
	movq %r12, %rdi
	callq _donna_files_write
	movq %r12, %rsi
	movq %rsi, %rdi
	callq _cli_cmd_format_path_to_module
	movq %rax, %rdi
	callq _utilities_logger_formatting
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb46
Lbb41:
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb46
Lbb43:
	movq %r12, %rsi
	leaq _str133(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_logger_step
	movl $0, %eax
Lbb46:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_format_format_one */

.text
.balign 16
_cli_cmd_format_format_file:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %r12
	callq _donna_files_exists
	cmpq $0, %rax
	jz Lbb54
	movq %r12, %rdi
	callq _donna_files_read
	movq %rax, %rdi
	movq %r12, %rsi
	movq %rdi, %rbx
	callq _tools_fmt_formatter_format_source
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb53
	movq 8(%rax), %rsi
	movq %rsi, %r13
	callq _donna_string_equal
	movq %r13, %rsi
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb51
	movq %rdi, %r13
	callq _donna_files_write
	movq %r13, %rdi
	movq %rdi, %r13
	leaq _str188(%rip), %rdi
	callq _utilities_colors_green
	movq %rax, %rdi
	leaq _str190(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rdi
	movq %rax, %r13
	callq _utilities_colors_dim
	movq %r13, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%r12)
	jmp Lbb52
Lbb51:
	leaq _str182(%rip), %rdi
	callq _utilities_colors_green
	movq %rax, %rdi
	movq %rdi, %r13
	leaq _str184(%rip), %rdi
	callq _utilities_colors_dim
	movq %r13, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%r12)
Lbb52:
	movq %rax, (%rbx)
	jmp Lbb56
Lbb53:
	movq 8(%rax), %r12
	leaq _str169(%rip), %rdi
	callq _utilities_colors_red
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str171(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb56
Lbb54:
	movq %r12, %rdi
	movq %rdi, %rbx
	leaq _str153(%rip), %rdi
	callq _utilities_colors_red
	movq %rax, %rdi
	leaq _str155(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
Lbb56:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_format_format_file */

.text
.balign 16
_cli_cmd_format_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb65
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb61
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb62
Lbb61:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str216(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb62:
	cmpl $0, %eax
	jnz Lbb64
	movq 16(%rdi), %rdi
	callq _cli_cmd_format_first_positional
	jmp Lbb66
Lbb64:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb66
Lbb65:
	leaq _str203(%rip), %rax
Lbb66:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_format_first_positional */

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

