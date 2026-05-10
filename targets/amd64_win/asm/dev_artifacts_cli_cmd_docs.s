.data
.balign 8
str7:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str18:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str20:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str27:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str36:
	.ascii "index.html"
	.byte 0
/* end data */

.data
.balign 8
str39:
	.ascii "docs.html"
	.byte 0
/* end data */

.data
.balign 8
str44:
	.ascii "  Docs"
	.byte 0
/* end data */

.data
.balign 8
str46:
	.ascii " "
	.byte 226
	.byte 134
	.byte 146
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str60:
	.ascii "could not derive GitHub owner/repo from donna.toml"
	.byte 0
/* end data */

.data
.balign 8
str61:
	.ascii "set `repository = { type = "
	.byte 34
	.ascii "github"
	.byte 34
	.ascii ", user = "
	.byte 34
	.ascii "OWNER"
	.byte 34
	.ascii ", repo = "
	.byte 34
	.ascii "REPO"
	.byte 34
	.ascii " }` so docs and badges can point at GitHub Pages"
	.byte 0
/* end data */

.data
.balign 8
str82:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str96:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str107:
	.ascii "README.md"
	.byte 0
/* end data */

.data
.balign 8
str116:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str138:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str158:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str171:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_docs_run
cli_cmd_docs_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq cli_cmd_docs_first_positional
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_string_is_empty
	subq $-32, %rsp
	cmpq $1, %rax
	leaq str7(%rip), %rax
	mov %rax, %rcx
	cmovnz %rsi, %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_scanner_scan
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %rdi
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb3
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq builder_scanner_scan_meta
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_project_src_dir
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	leaq str27(%rip), %rdx
	movq %rcx, %r12
	callq donna_files_join
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_time_now_us
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %rdi, %rcx
	callq donna_files_mkdir
	movq %r14, %rdx
	movq %r13, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	leaq donna_nil(%rip), %rdx
	movq %rcx, %r13
	movq %r14, %rcx
	callq cli_cmd_docs_find_donna_files
	movq %r14, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq cli_cmd_docs_extract_modules
	movq %r13, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_docs_read_readme
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	callq tools_docgen_render_render_index
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	callq tools_docgen_render_render_docs
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	leaq str36(%rip), %rdx
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq donna_files_join
	movq %r14, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_write
	movq %r13, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq str39(%rip), %rdx
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq donna_files_join
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_write
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_time_now_us
	movq %rbx, %rcx
	subq $-32, %rsp
	movq %rcx, %rbx
	movq %rax, %rcx
	subq %r12, %rcx
	subq $32, %rsp
	callq utilities_logger_docs_ok
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_docs_warn_missing_github_repo
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str44(%rip), %rcx
	callq utilities_colors_orange
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str46(%rip), %rdx
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
	jmp Lbb4
Lbb3:
	movq 8(%rax), %rdi
	subq $32, %rsp
	leaq str18(%rip), %rcx
	callq utilities_colors_red
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str20(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb4:
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
/* end function cli_cmd_docs_run */

.text
.balign 16
cli_cmd_docs_warn_missing_github_repo:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_scanner_meta_github_owner_repo
	subq $-32, %rsp
	movq (%rax), %rax
	cmpq $1, %rax
	jz Lbb7
	subq $32, %rsp
	leaq str60(%rip), %rcx
	callq utilities_logger_warn
	subq $-32, %rsp
	subq $32, %rsp
	leaq str61(%rip), %rcx
	callq utilities_logger_hint
	subq $-32, %rsp
Lbb7:
	movl $0, %eax
	leave
	ret
/* end function cli_cmd_docs_warn_missing_github_repo */

.text
.balign 16
cli_cmd_docs_extract_modules:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %r12
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb11
	movq 8(%rcx), %rbx
	movq 16(%rcx), %rdi
	subq $32, %rsp
	movq %rbx, %rcx
	callq donna_files_read
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %r12, %rdx
	movq %rcx, %rbx
	movq %r13, %rcx
	callq cli_cmd_docs_path_to_module
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq tools_docgen_extractor_extract
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
	callq cli_cmd_docs_extract_modules
	subq $-32, %rsp
	jmp Lbb13
Lbb11:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb13:
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_docs_extract_modules */

.text
.balign 16
cli_cmd_docs_path_to_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rcx, %rdi
	movq %rdx, %rcx
	subq $32, %rsp
	leaq str82(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jnz Lbb17
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_string_length
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_length
	movq %rbx, %rdx
	movq %rax, %rcx
	movq %rdi, %rax
	subq $-32, %rsp
	movq %rsi, %r8
	subq %rcx, %r8
	subq $32, %rsp
	movq %rax, %rcx
	callq donna_string_slice
	subq $-32, %rsp
	movq %rax, %rdi
Lbb17:
	subq $32, %rsp
	leaq str96(%rip), %rdx
	movq %rdi, %rcx
	callq donna_string_ends_with
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb20
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb21
Lbb20:
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
Lbb21:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function cli_cmd_docs_path_to_module */

.text
.balign 16
cli_cmd_docs_read_readme:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str107(%rip), %rdx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_files_exists
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb24
	leaq str116(%rip), %rax
	jmp Lbb25
Lbb24:
	subq $32, %rsp
	callq donna_files_read
	subq $-32, %rsp
Lbb25:
	popq %rsi
	leave
	ret
/* end function cli_cmd_docs_read_readme */

.text
.balign 16
cli_cmd_docs_find_donna_files:
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
	callq cli_cmd_docs_collect_entries
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_docs_find_donna_files */

.text
.balign 16
cli_cmd_docs_collect_entries:
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
	jz Lbb39
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
	jz Lbb36
	subq $32, %rsp
	movq %rdx, %r14
	leaq str138(%rip), %rdx
	callq donna_string_ends_with
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb33
	movq %r12, (%rbx)
	movq %r14, %rdx
	movq %r12, %rax
	jmp Lbb34
Lbb33:
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
Lbb34:
	movq %rax, (%rsi)
	movq %rdi, %rcx
	jmp Lbb38
Lbb36:
	movq %rbx, %rcx
	movq %r12, %rax
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rax, %rdx
	callq cli_cmd_docs_find_donna_files
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb38:
	subq $32, %rsp
	movq %rax, %r8
	callq cli_cmd_docs_collect_entries
	subq $-32, %rsp
	jmp Lbb40
Lbb39:
	movq %r12, %rax
Lbb40:
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
/* end function cli_cmd_docs_collect_entries */

.text
.balign 16
cli_cmd_docs_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb49
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb45
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb46
Lbb45:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str171(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb46:
	cmpl $0, %eax
	jnz Lbb48
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_docs_first_positional
	subq $-32, %rsp
	jmp Lbb50
Lbb48:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb50
Lbb49:
	leaq str158(%rip), %rax
Lbb50:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_docs_first_positional */

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

