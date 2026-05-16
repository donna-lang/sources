.data
.balign 8
.globl _donna_option_None
_donna_option_None:
	.quad 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl _donna_option_Some
_donna_option_Some:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function donna_option_Some */

.text
.balign 16
.globl _donna_option_is_some
_donna_option_is_some:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	movl $1, %ecx
	movl $0, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_option_is_some */

.text
.balign 16
.globl _donna_option_is_none
_donna_option_is_none:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_option_is_none */

.text
.balign 16
.globl _donna_option_unwrap
_donna_option_unwrap:
	endbr64
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb8
	movq 8(%rdi), %rax
Lbb8:
	ret
/* end function donna_option_unwrap */

.text
.balign 16
.globl _donna_option_map
_donna_option_map:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb11
	movq 8(%rdi), %rdi
	callq *%rsi
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb12
Lbb11:
	leaq _donna_option_None(%rip), %rax
Lbb12:
	popq %rbx
	leave
	ret
/* end function donna_option_map */

.text
.balign 16
.globl _donna_option_then
_donna_option_then:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb15
	movq 8(%rdi), %rdi
	callq *%rsi
	jmp Lbb16
Lbb15:
	leaq _donna_option_None(%rip), %rax
Lbb16:
	leave
	ret
/* end function donna_option_then */

.text
.balign 16
.globl _donna_option_or
_donna_option_or:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	mov %rsi, %rax
	cmovnz %rdi, %rax
	ret
/* end function donna_option_or */

.text
.balign 16
.globl _donna_option_lazy_unwrap
_donna_option_lazy_unwrap:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb21
	movq 8(%rdi), %rax
	jmp Lbb22
Lbb21:
	callq *%rsi
Lbb22:
	leave
	ret
/* end function donna_option_lazy_unwrap */

.text
.balign 16
.globl _donna_option_filter
_donna_option_filter:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb27
	movq 8(%rdi), %r12
	movq %r12, %rdi
	callq *%rsi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb26
	leaq _donna_option_None(%rip), %rax
	movq %rax, (%rbx)
	leaq _donna_option_None(%rip), %rax
	jmp Lbb28
Lbb26:
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb28
Lbb27:
	leaq _donna_option_None(%rip), %rax
Lbb28:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_option_filter */

.text
.balign 16
.globl _donna_option_to_list
_donna_option_to_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb31
	movq 8(%rdi), %rbx
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb32
Lbb31:
	leaq _donna_nil(%rip), %rax
Lbb32:
	popq %rbx
	leave
	ret
/* end function donna_option_to_list */

