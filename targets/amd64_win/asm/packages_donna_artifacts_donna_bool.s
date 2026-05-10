.data
.balign 8
str36:
	.ascii "True"
	.byte 0
/* end data */

.data
.balign 8
str37:
	.ascii "False"
	.byte 0
/* end data */

.text
.balign 16
.globl donna_bool_not
donna_bool_not:
	endbr64
	cmpq $1, %rcx
	movl $1, %ecx
	movl $0, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_bool_not */

.text
.balign 16
.globl donna_bool_and
donna_bool_and:
	endbr64
	cmpq $1, %rcx
	movl $0, %eax
	cmovz %rdx, %rax
	ret
/* end function donna_bool_and */

.text
.balign 16
.globl donna_bool_or
donna_bool_or:
	endbr64
	cmpq $1, %rcx
	movl $1, %eax
	cmovnz %rdx, %rax
	ret
/* end function donna_bool_or */

.text
.balign 16
.globl donna_bool_xor
donna_bool_xor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdx, %rax
	cmpq $1, %rcx
	jnz Lbb8
	subq $32, %rsp
	movq %rax, %rcx
	callq donna_bool_not
	subq $-32, %rsp
Lbb8:
	leave
	ret
/* end function donna_bool_xor */

.text
.balign 16
.globl donna_bool_to_int
donna_bool_to_int:
	endbr64
	cmpq $1, %rcx
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_bool_to_int */

.text
.balign 16
.globl donna_bool_to_string
donna_bool_to_string:
	endbr64
	cmpq $1, %rcx
	leaq str37(%rip), %rcx
	leaq str36(%rip), %rax
	cmovnz %rcx, %rax
	ret
/* end function donna_bool_to_string */

.text
.balign 16
.globl donna_bool_guard
donna_bool_guard:
	endbr64
	cmpq $1, %rcx
	mov %rdx, %rax
	cmovnz %r8, %rax
	ret
/* end function donna_bool_guard */

