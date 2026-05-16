.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl donna_result_Ok
donna_result_Ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function donna_result_Ok */

.text
.balign 16
.globl donna_result_Error
donna_result_Error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function donna_result_Error */

.text
.balign 16
.globl donna_result_is_ok
donna_result_is_ok:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_result_is_ok */

.text
.balign 16
.globl donna_result_is_error
donna_result_is_error:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	movl $1, %ecx
	movl $0, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_result_is_error */

.text
.balign 16
.globl donna_result_unwrap
donna_result_unwrap:
	endbr64
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jnz Lbb10
	movq 8(%rcx), %rax
Lbb10:
	ret
/* end function donna_result_unwrap */

.text
.balign 16
.globl donna_result_unwrap_error
donna_result_unwrap_error:
	endbr64
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb13
	movq 8(%rcx), %rax
Lbb13:
	ret
/* end function donna_result_unwrap_error */

.text
.balign 16
.globl donna_result_map
donna_result_map:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb16
	movq 8(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb17
Lbb16:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq *%rdx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb17:
	popq %rsi
	leave
	ret
/* end function donna_result_map */

.text
.balign 16
.globl donna_result_map_error
donna_result_map_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb20
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq *%rdx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb21
Lbb20:
	movq 8(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb21:
	popq %rsi
	leave
	ret
/* end function donna_result_map_error */

.text
.balign 16
.globl donna_result_then
donna_result_then:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb24
	movq 8(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb25
Lbb24:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq *%rdx
	subq $-32, %rsp
Lbb25:
	popq %rsi
	leave
	ret
/* end function donna_result_then */

.text
.balign 16
.globl donna_result_or
donna_result_or:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	mov %rcx, %rax
	cmovnz %rdx, %rax
	ret
/* end function donna_result_or */

.text
.balign 16
.globl donna_result_to_list
donna_result_to_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb30
	leaq donna_nil(%rip), %rax
	jmp Lbb31
Lbb30:
	movq 8(%rcx), %rsi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb31:
	popq %rsi
	leave
	ret
/* end function donna_result_to_list */

