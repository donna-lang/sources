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
_str36:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str38:
	.ascii ": cannot run library project"
	.byte 0
/* end data */

.data
.balign 8
_str40:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str42:
	.ascii "  hint: add pub fn main() to create an application entry point"
	.byte 0
/* end data */

.data
.balign 8
_str51:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str53:
	.ascii ": executable was not produced at "
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str59:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str70:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str83:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl _cli_cmd_run_run
_cli_cmd_run_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	callq _cli_cmd_run_first_positional
	movq %rax, %rdi
	movq %rdi, %rbx
	callq _builder_scanner_scan
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb11
	movq 8(%rax), %rbx
	movq %rbx, %rsi
	callq _cli_cmd_build_build_project
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb10
	movq 8(%rax), %r13
	movq %rdi, %r12
	callq _builder_scanner_project_name
	movq %r12, %rdi
	movq %rax, %r12
	callq _builder_scanner_project_bin_dir
	movq %r12, %rsi
	movq %rax, %rdi
	callq _donna_files_join
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %r13
	jz Lbb8
	movq %rdi, %r14
	callq _donna_files_exists
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $0, %rax
	jz Lbb5
	callq _donna_shell_flush
	movq %r14, %rdi
	leaq _donna_nil(%rip), %rsi
	callq _donna_shell_exec
	leaq _str59(%rip), %rax
	movq %rax, (%r13)
	leaq _str59(%rip), %rax
	jmp Lbb7
Lbb5:
	movq %r14, %rdi
	movq %rdi, %r14
	leaq _str51(%rip), %rdi
	callq _utilities_colors_red
	movq %rax, %rdi
	leaq _str53(%rip), %rsi
	callq ___rt_str_concat
	movq %r14, %rdi
	movq %rax, %r14
	callq _utilities_colors_path
	movq %r14, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%r13)
Lbb7:
	movq %rax, (%r12)
	jmp Lbb9
Lbb8:
	leaq _str36(%rip), %rdi
	callq _utilities_colors_red
	movq %rax, %rdi
	leaq _str38(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str40(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r13
	leaq _str42(%rip), %rdi
	callq _utilities_colors_dim
	movq %r13, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, (%r12)
Lbb9:
	movq %rax, (%rbx)
	jmp Lbb12
Lbb10:
	movq 8(%rax), %rax
	movq %rax, (%rbx)
	jmp Lbb12
Lbb11:
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
Lbb12:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_run_run */

.text
.balign 16
_cli_cmd_run_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb21
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb17
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb18
Lbb17:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str83(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb18:
	cmpl $0, %eax
	jnz Lbb20
	movq 16(%rdi), %rdi
	callq _cli_cmd_run_first_positional
	jmp Lbb22
Lbb20:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb22
Lbb21:
	leaq _str70(%rip), %rax
Lbb22:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_run_first_positional */

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

