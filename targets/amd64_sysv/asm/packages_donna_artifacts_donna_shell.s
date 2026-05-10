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
	callq donna_rt_getenv
	leave
	ret
.type donna_shell_getenv, @function
.size donna_shell_getenv, .-donna_shell_getenv
/* end function donna_shell_getenv */

.text
.balign 16
.globl donna_shell_flush
donna_shell_flush:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_rt_flush
	leave
	ret
.type donna_shell_flush, @function
.size donna_shell_flush, .-donna_shell_flush
/* end function donna_shell_flush */

.text
.balign 16
.globl donna_shell_run
donna_shell_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_shell_exec
	leave
	ret
.type donna_shell_run, @function
.size donna_shell_run, .-donna_shell_run
/* end function donna_shell_run */

.text
.balign 16
.globl donna_shell_capture
donna_shell_capture:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_ffi_shell_capture
	leave
	ret
.type donna_shell_capture, @function
.size donna_shell_capture, .-donna_shell_capture
/* end function donna_shell_capture */

.text
.balign 16
.globl donna_shell_exec
donna_shell_exec:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_shell_build_cmd
	movq %rax, %rdi
	callq donna_ffi_shell_exec
	leave
	ret
.type donna_shell_exec, @function
.size donna_shell_exec, .-donna_shell_exec
/* end function donna_shell_exec */

.text
.balign 16
.globl donna_shell_output
donna_shell_output:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_shell_build_cmd
	movq %rax, %rdi
	callq donna_ffi_shell_capture
	leave
	ret
.type donna_shell_output, @function
.size donna_shell_output, .-donna_shell_output
/* end function donna_shell_output */

.text
.balign 16
.globl donna_shell_output_with_err
donna_shell_output_with_err:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_shell_build_cmd
	movq %rax, %rdi
	leaq str9(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_ffi_shell_capture
	leave
	ret
.type donna_shell_output_with_err, @function
.size donna_shell_output_with_err, .-donna_shell_output_with_err
/* end function donna_shell_output_with_err */

.text
.balign 16
.globl donna_shell_exec_in
donna_shell_exec_in:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdx, %rsi
	movq %rdi, %rbx
	leaq str12(%rip), %rdi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq str14(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_shell_build_cmd
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq donna_ffi_shell_exec
	popq %r12
	popq %rbx
	leave
	ret
.type donna_shell_exec_in, @function
.size donna_shell_exec_in, .-donna_shell_exec_in
/* end function donna_shell_exec_in */

.text
.balign 16
donna_shell_build_cmd:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rax
	movq %rsi, %rdi
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz .Lbb18
	leaq str25(%rip), %rsi
	movq %rdi, %rbx
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_shell_join_args
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
.Lbb18:
	popq %rbx
	leave
	ret
.type donna_shell_build_cmd, @function
.size donna_shell_build_cmd, .-donna_shell_build_cmd
/* end function donna_shell_build_cmd */

.text
.balign 16
donna_shell_join_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb27
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb23
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb24
.Lbb23:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb24:
	cmpl $0, %eax
	jnz .Lbb26
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	leaq str61(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_shell_join_args
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	jmp .Lbb28
.Lbb26:
	movq 8(%rdi), %rax
	jmp .Lbb28
.Lbb27:
	leaq str36(%rip), %rax
.Lbb28:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type donna_shell_join_args, @function
.size donna_shell_join_args, .-donna_shell_join_args
/* end function donna_shell_join_args */

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
