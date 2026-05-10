.data
.balign 8
_str9:
	.ascii " 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str12:
	.ascii "cd "
	.byte 0
/* end data */

.data
.balign 8
_str14:
	.ascii " && "
	.byte 0
/* end data */

.data
.balign 8
_str25:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str36:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str61:
	.ascii " "
	.byte 0
/* end data */

.text
.balign 16
.globl _donna_shell_getenv
_donna_shell_getenv:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_rt_getenv
	leave
	ret
/* end function donna_shell_getenv */

.text
.balign 16
.globl _donna_shell_flush
_donna_shell_flush:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_rt_flush
	leave
	ret
/* end function donna_shell_flush */

.text
.balign 16
.globl _donna_shell_run
_donna_shell_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_shell_exec
	leave
	ret
/* end function donna_shell_run */

.text
.balign 16
.globl _donna_shell_capture
_donna_shell_capture:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_shell_capture
	leave
	ret
/* end function donna_shell_capture */

.text
.balign 16
.globl _donna_shell_exec
_donna_shell_exec:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_shell_build_cmd
	movq %rax, %rdi
	callq _donna_ffi_shell_exec
	leave
	ret
/* end function donna_shell_exec */

.text
.balign 16
.globl _donna_shell_output
_donna_shell_output:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_shell_build_cmd
	movq %rax, %rdi
	callq _donna_ffi_shell_capture
	leave
	ret
/* end function donna_shell_output */

.text
.balign 16
.globl _donna_shell_output_with_err
_donna_shell_output_with_err:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_shell_build_cmd
	movq %rax, %rdi
	leaq _str9(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _donna_ffi_shell_capture
	leave
	ret
/* end function donna_shell_output_with_err */

.text
.balign 16
.globl _donna_shell_exec_in
_donna_shell_exec_in:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdx, %rsi
	movq %rdi, %rbx
	leaq _str12(%rip), %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str14(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_shell_build_cmd
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _donna_ffi_shell_exec
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_shell_exec_in */

.text
.balign 16
_donna_shell_build_cmd:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rax
	movq %rsi, %rdi
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb18
	leaq _str25(%rip), %rsi
	movq %rdi, %rbx
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_shell_join_args
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
Lbb18:
	popq %rbx
	leave
	ret
/* end function donna_shell_build_cmd */

.text
.balign 16
_donna_shell_join_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb27
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb23
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb24
Lbb23:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb24:
	cmpl $0, %eax
	jnz Lbb26
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	leaq _str61(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_shell_join_args
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb28
Lbb26:
	movq 8(%rdi), %rax
	jmp Lbb28
Lbb27:
	leaq _str36(%rip), %rax
Lbb28:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function donna_shell_join_args */

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

