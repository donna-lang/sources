.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl _donna_result_Ok
_donna_result_Ok:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function donna_result_Ok */

.text
.balign 16
.globl _donna_result_Error
_donna_result_Error:
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
/* end function donna_result_Error */

.text
.balign 16
.globl _donna_result_is_ok
_donna_result_is_ok:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_result_is_ok */

.text
.balign 16
.globl _donna_result_is_error
_donna_result_is_error:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	movl $1, %ecx
	movl $0, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_result_is_error */

.text
.balign 16
.globl _donna_result_unwrap
_donna_result_unwrap:
	endbr64
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jnz Lbb10
	movq 8(%rdi), %rax
Lbb10:
	ret
/* end function donna_result_unwrap */

.text
.balign 16
.globl _donna_result_unwrap_error
_donna_result_unwrap_error:
	endbr64
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb13
	movq 8(%rdi), %rax
Lbb13:
	ret
/* end function donna_result_unwrap_error */

.text
.balign 16
.globl _donna_result_map
_donna_result_map:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb16
	movq 8(%rdi), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb17
Lbb16:
	movq 8(%rdi), %rdi
	callq *%rsi
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
Lbb17:
	popq %rbx
	leave
	ret
/* end function donna_result_map */

.text
.balign 16
.globl _donna_result_map_error
_donna_result_map_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb20
	movq 8(%rdi), %rdi
	callq *%rsi
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb21
Lbb20:
	movq 8(%rdi), %rbx
	movl $16, %edi
	callq _malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
Lbb21:
	popq %rbx
	leave
	ret
/* end function donna_result_map_error */

.text
.balign 16
.globl _donna_result_then
_donna_result_then:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb24
	movq 8(%rdi), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb25
Lbb24:
	movq 8(%rdi), %rdi
	callq *%rsi
Lbb25:
	popq %rbx
	leave
	ret
/* end function donna_result_then */

.text
.balign 16
.globl _donna_result_or
_donna_result_or:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	mov %rdi, %rax
	cmovnz %rsi, %rax
	ret
/* end function donna_result_or */

.text
.balign 16
.globl _donna_result_to_list
_donna_result_to_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb30
	leaq _donna_nil(%rip), %rax
	jmp Lbb31
Lbb30:
	movq 8(%rdi), %rbx
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb31:
	popq %rbx
	leave
	ret
/* end function donna_result_to_list */

