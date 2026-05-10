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
str36:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str38:
	.ascii ": cannot run library project"
	.byte 0
/* end data */

.data
.balign 8
str40:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str42:
	.ascii "  hint: add pub fn main() to create an application entry point"
	.byte 0
/* end data */

.data
.balign 8
str51:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str53:
	.ascii ": executable was not produced at "
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str59:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str70:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str83:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_run_run
cli_cmd_run_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq cli_cmd_run_first_positional
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
	jnz Lbb11
	movq 8(%rax), %rsi
	subq $32, %rsp
	movq %rsi, %rdx
	callq cli_cmd_build_build_project
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb10
	movq 8(%rax), %rbx
	subq $32, %rsp
	movq %rcx, %rdi
	callq builder_scanner_project_name
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_project_bin_dir
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rbx
	jz Lbb8
	subq $32, %rsp
	movq %rcx, %r12
	callq donna_files_exists
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb5
	subq $32, %rsp
	callq donna_shell_flush
	movq %r12, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq donna_shell_exec
	subq $-32, %rsp
	leaq str59(%rip), %rax
	movq %rax, (%rbx)
	leaq str59(%rip), %rax
	jmp Lbb7
Lbb5:
	movq %r12, %rcx
	subq $32, %rsp
	movq %rcx, %r12
	leaq str51(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str53(%rip), %rdx
	callq __rt_str_concat
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_path
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb7:
	movq %rax, (%rdi)
	jmp Lbb9
Lbb8:
	subq $32, %rsp
	leaq str36(%rip), %rcx
	callq utilities_colors_red
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str38(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str40(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str42(%rip), %rcx
	callq utilities_colors_dim
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb9:
	movq %rax, (%rsi)
	jmp Lbb12
Lbb10:
	movq 8(%rax), %rax
	movq %rax, (%rsi)
	jmp Lbb12
Lbb11:
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
Lbb12:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_run_run */

.text
.balign 16
cli_cmd_run_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb21
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb17
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb18
Lbb17:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str83(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb18:
	cmpl $0, %eax
	jnz Lbb20
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_run_first_positional
	subq $-32, %rsp
	jmp Lbb22
Lbb20:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb22
Lbb21:
	leaq str70(%rip), %rax
Lbb22:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_run_first_positional */

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

