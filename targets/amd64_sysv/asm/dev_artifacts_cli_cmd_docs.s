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
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq cli_cmd_docs_first_positional
	movq %rax, %rbx
	movq %rbx, %rdi
	callq donna_string_is_empty
	cmpq $1, %rax
	leaq str7(%rip), %rax
	mov %rax, %rdi
	cmovnz %rbx, %rdi
	movq %rdi, %r12
	callq builder_scanner_scan
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb3
	movq 8(%rax), %rdi
	movq %rdi, %r13
	movq %r12, %rdi
	callq builder_scanner_scan_meta
	movq %r13, %rdi
	movq %rax, %r13
	callq builder_scanner_project_src_dir
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rsi, %r15
	leaq str27(%rip), %rsi
	movq %rdi, %r14
	callq donna_files_join
	movq %rax, %r12
	callq donna_time_now_us
	movq %r14, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %r14
	movq %r12, %rdi
	callq donna_files_mkdir
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rsi, %r15
	leaq donna_nil(%rip), %rsi
	movq %rdi, %r14
	movq %r15, %rdi
	callq cli_cmd_docs_find_donna_files
	movq %r15, %rsi
	movq %rax, %rdi
	leaq donna_nil(%rip), %rdx
	callq cli_cmd_docs_extract_modules
	movq %r14, %rdi
	movq %rax, %r14
	callq cli_cmd_docs_read_readme
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	callq tools_docgen_render_render_index
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %r14
	movq %rdi, %r13
	callq tools_docgen_render_render_docs
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %r15
	movq %rsi, %r14
	leaq str36(%rip), %rsi
	movq %rdi, %r13
	movq %r12, %rdi
	callq donna_files_join
	movq %r14, %rsi
	movq %rax, %rdi
	movq -16(%rbp), %r14
	callq donna_files_write
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rsi, %r15
	leaq str39(%rip), %rsi
	movq %rdi, %r13
	movq %r12, %rdi
	callq donna_files_join
	movq %r15, %rsi
	movq %rax, %rdi
	callq donna_files_write
	callq donna_time_now_us
	movq %r13, %rdi
	movq %rdi, %r13
	movq %rax, %rdi
	subq %r14, %rdi
	callq utilities_logger_docs_ok
	movq %r13, %rdi
	callq cli_cmd_docs_warn_missing_github_repo
	movq %r12, %rdi
	movq %rdi, %r12
	leaq str44(%rip), %rdi
	callq utilities_colors_orange
	movq %rax, %rdi
	leaq str46(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, (%rbx)
	jmp .Lbb4
.Lbb3:
	movq 8(%rax), %r12
	leaq str18(%rip), %rdi
	callq utilities_colors_red
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq str20(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, (%rbx)
.Lbb4:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_docs_run, @function
.size cli_cmd_docs_run, .-cli_cmd_docs_run
/* end function cli_cmd_docs_run */

.text
.balign 16
cli_cmd_docs_warn_missing_github_repo:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq builder_scanner_meta_github_owner_repo
	movq (%rax), %rax
	cmpq $1, %rax
	jz .Lbb7
	leaq str60(%rip), %rdi
	callq utilities_logger_warn
	leaq str61(%rip), %rdi
	callq utilities_logger_hint
.Lbb7:
	movl $0, %eax
	leave
	ret
.type cli_cmd_docs_warn_missing_github_repo, @function
.size cli_cmd_docs_warn_missing_github_repo, .-cli_cmd_docs_warn_missing_github_repo
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
	pushq %r14
	pushq %r15
	movq %rdx, %rbx
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb11
	movq 8(%rdi), %r13
	movq 16(%rdi), %r12
	movq %r13, %rdi
	callq donna_files_read
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r15
	movq %r14, %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq cli_cmd_docs_path_to_module
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	callq tools_docgen_extractor_extract
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
	callq cli_cmd_docs_extract_modules
	jmp .Lbb13
.Lbb11:
	movq %rbx, %rdi
	callq donna_list_reverse
.Lbb13:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_docs_extract_modules, @function
.size cli_cmd_docs_extract_modules, .-cli_cmd_docs_extract_modules
/* end function cli_cmd_docs_extract_modules */

.text
.balign 16
cli_cmd_docs_path_to_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %r12
	movq %rsi, %rdi
	leaq str82(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_string_starts_with
	movq %rbx, %rdi
	cmpq $1, %rax
	jnz .Lbb17
	movq %rdi, %rbx
	callq donna_string_length
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_string_length
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_string_length
	movq %r13, %rsi
	movq %rax, %rcx
	movq %r12, %rax
	movq %rbx, %rdx
	subq %rcx, %rdx
	movq %rax, %rdi
	callq donna_string_slice
	movq %rax, %r12
.Lbb17:
	leaq str96(%rip), %rsi
	movq %r12, %rdi
	callq donna_string_ends_with
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb20
	movq %r12, (%rbx)
	movq %r12, %rax
	jmp .Lbb21
.Lbb20:
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
.Lbb21:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_docs_path_to_module, @function
.size cli_cmd_docs_path_to_module, .-cli_cmd_docs_path_to_module
/* end function cli_cmd_docs_path_to_module */

.text
.balign 16
cli_cmd_docs_read_readme:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq str107(%rip), %rsi
	callq donna_files_join
	movq %rax, %rdi
	movq %rdi, %rbx
	callq donna_files_exists
	movq %rbx, %rdi
	cmpq $1, %rax
	jz .Lbb24
	leaq str116(%rip), %rax
	jmp .Lbb25
.Lbb24:
	callq donna_files_read
.Lbb25:
	popq %rbx
	leave
	ret
.type cli_cmd_docs_read_readme, @function
.size cli_cmd_docs_read_readme, .-cli_cmd_docs_read_readme
/* end function cli_cmd_docs_read_readme */

.text
.balign 16
cli_cmd_docs_find_donna_files:
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
	callq cli_cmd_docs_collect_entries
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_docs_find_donna_files, @function
.size cli_cmd_docs_find_donna_files, .-cli_cmd_docs_find_donna_files
/* end function cli_cmd_docs_find_donna_files */

.text
.balign 16
cli_cmd_docs_collect_entries:
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
	jz .Lbb39
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
	jz .Lbb36
	movq %rsi, %r15
	leaq str138(%rip), %rsi
	callq donna_string_ends_with
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz .Lbb33
	movq %r14, (%r13)
	movq %r15, %rsi
	movq %r14, %rax
	jmp .Lbb34
.Lbb33:
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
.Lbb34:
	movq %rax, (%rbx)
	movq %r12, %rdi
	jmp .Lbb38
.Lbb36:
	movq %r13, %rdi
	movq %r14, %rax
	movq %rsi, %r13
	movq %rax, %rsi
	callq cli_cmd_docs_find_donna_files
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, (%rbx)
.Lbb38:
	movq %rax, %rdx
	callq cli_cmd_docs_collect_entries
	jmp .Lbb40
.Lbb39:
	movq %r14, %rax
.Lbb40:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_docs_collect_entries, @function
.size cli_cmd_docs_collect_entries, .-cli_cmd_docs_collect_entries
/* end function cli_cmd_docs_collect_entries */

.text
.balign 16
cli_cmd_docs_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb49
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz .Lbb45
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb46
.Lbb45:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq str171(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb46:
	cmpl $0, %eax
	jnz .Lbb48
	movq 16(%rdi), %rdi
	callq cli_cmd_docs_first_positional
	jmp .Lbb50
.Lbb48:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp .Lbb50
.Lbb49:
	leaq str158(%rip), %rax
.Lbb50:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type cli_cmd_docs_first_positional, @function
.size cli_cmd_docs_first_positional, .-cli_cmd_docs_first_positional
/* end function cli_cmd_docs_first_positional */

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
