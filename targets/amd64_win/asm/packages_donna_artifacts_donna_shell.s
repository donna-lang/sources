.data
.balign 8
str9:
	.ascii " 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str12:
	.ascii "cd "
	.byte 0
/* end data */

.data
.balign 8
str14:
	.ascii " && "
	.byte 0
/* end data */

.data
.balign 8
str25:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str36:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str61:
	.ascii " "
	.byte 0
/* end data */

.text
.balign 16
.globl donna_shell_getenv
donna_shell_getenv:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_rt_getenv
	subq $-32, %rsp
	leave
	ret
/* end function donna_shell_getenv */

.text
.balign 16
.globl donna_shell_flush
donna_shell_flush:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_rt_flush
	subq $-32, %rsp
	leave
	ret
/* end function donna_shell_flush */

.text
.balign 16
.globl donna_shell_run
donna_shell_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_shell_exec
	subq $-32, %rsp
	leave
	ret
/* end function donna_shell_run */

.text
.balign 16
.globl donna_shell_capture
donna_shell_capture:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_ffi_shell_capture
	subq $-32, %rsp
	leave
	ret
/* end function donna_shell_capture */

.text
.balign 16
.globl donna_shell_exec
donna_shell_exec:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_shell_build_cmd
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_ffi_shell_exec
	subq $-32, %rsp
	leave
	ret
/* end function donna_shell_exec */

.text
.balign 16
.globl donna_shell_output
donna_shell_output:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_shell_build_cmd
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_ffi_shell_capture
	subq $-32, %rsp
	leave
	ret
/* end function donna_shell_output */

.text
.balign 16
.globl donna_shell_output_with_err
donna_shell_output_with_err:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_shell_build_cmd
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str9(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_ffi_shell_capture
	subq $-32, %rsp
	leave
	ret
/* end function donna_shell_output_with_err */

.text
.balign 16
.globl donna_shell_exec_in
donna_shell_exec_in:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %r8, %rdx
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str12(%rip), %rcx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str14(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_build_cmd
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_ffi_shell_exec
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_shell_exec_in */

.text
.balign 16
donna_shell_build_cmd:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb18
	subq $32, %rsp
	leaq str25(%rip), %rdx
	movq %rcx, %rsi
	movq %rax, %rcx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_join_args
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb18:
	popq %rsi
	leave
	ret
/* end function donna_shell_build_cmd */

.text
.balign 16
donna_shell_join_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb27
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb23
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb24
Lbb23:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb24:
	cmpl $0, %eax
	jnz Lbb26
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	leaq str61(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_join_args
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb28
Lbb26:
	movq 8(%rcx), %rax
	jmp Lbb28
Lbb27:
	leaq str36(%rip), %rax
Lbb28:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function donna_shell_join_args */

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

