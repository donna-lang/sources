.data
.balign 8
.globl donna_option_None
donna_option_None:
	.quad 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl donna_option_Some
donna_option_Some:
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
/* end function donna_option_Some */

.text
.balign 16
.globl donna_option_is_some
donna_option_is_some:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	movl $1, %ecx
	movl $0, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_option_is_some */

.text
.balign 16
.globl donna_option_is_none
donna_option_is_none:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_option_is_none */

.text
.balign 16
.globl donna_option_unwrap
donna_option_unwrap:
	endbr64
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb8
	movq 8(%rcx), %rax
Lbb8:
	ret
/* end function donna_option_unwrap */

.text
.balign 16
.globl donna_option_map
donna_option_map:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb11
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq *%rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	jmp Lbb12
Lbb11:
	leaq donna_option_None(%rip), %rax
Lbb12:
	leave
	ret
/* end function donna_option_map */

.text
.balign 16
.globl donna_option_then
donna_option_then:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb15
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq *%rdx
	subq $-32, %rsp
	jmp Lbb16
Lbb15:
	leaq donna_option_None(%rip), %rax
Lbb16:
	leave
	ret
/* end function donna_option_then */

.text
.balign 16
.globl donna_option_or
donna_option_or:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	mov %rdx, %rax
	cmovnz %rcx, %rax
	ret
/* end function donna_option_or */

.text
.balign 16
.globl donna_option_lazy_unwrap
donna_option_lazy_unwrap:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb21
	movq 8(%rcx), %rax
	jmp Lbb22
Lbb21:
	subq $32, %rsp
	callq *%rdx
	subq $-32, %rsp
Lbb22:
	leave
	ret
/* end function donna_option_lazy_unwrap */

.text
.balign 16
.globl donna_option_filter
donna_option_filter:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb27
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	callq *%rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb26
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
	jmp Lbb28
Lbb26:
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb28
Lbb27:
	leaq donna_option_None(%rip), %rax
Lbb28:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function donna_option_filter */

.text
.balign 16
.globl donna_option_to_list
donna_option_to_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb31
	movq 8(%rcx), %rsi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb32
Lbb31:
	leaq donna_nil(%rip), %rax
Lbb32:
	popq %rsi
	leave
	ret
/* end function donna_option_to_list */

