.data
.balign 8
_str36:
	.ascii "True"
	.byte 0
/* end data */

.data
.balign 8
_str37:
	.ascii "False"
	.byte 0
/* end data */

.text
.balign 16
.globl _donna_bool_not
_donna_bool_not:
	endbr64
	cmpq $1, %rdi
	movl $1, %ecx
	movl $0, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_bool_not */

.text
.balign 16
.globl _donna_bool_and
_donna_bool_and:
	endbr64
	cmpq $1, %rdi
	movl $0, %eax
	cmovz %rsi, %rax
	ret
/* end function donna_bool_and */

.text
.balign 16
.globl _donna_bool_or
_donna_bool_or:
	endbr64
	cmpq $1, %rdi
	movl $1, %eax
	cmovnz %rsi, %rax
	ret
/* end function donna_bool_or */

.text
.balign 16
.globl _donna_bool_xor
_donna_bool_xor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rsi, %rax
	cmpq $1, %rdi
	jnz Lbb8
	movq %rax, %rdi
	callq _donna_bool_not
Lbb8:
	leave
	ret
/* end function donna_bool_xor */

.text
.balign 16
.globl _donna_bool_to_int
_donna_bool_to_int:
	endbr64
	cmpq $1, %rdi
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_bool_to_int */

.text
.balign 16
.globl _donna_bool_to_string
_donna_bool_to_string:
	endbr64
	cmpq $1, %rdi
	leaq _str37(%rip), %rcx
	leaq _str36(%rip), %rax
	cmovnz %rcx, %rax
	ret
/* end function donna_bool_to_string */

.text
.balign 16
.globl _donna_bool_guard
_donna_bool_guard:
	endbr64
	cmpq $1, %rdi
	mov %rsi, %rax
	cmovnz %rdx, %rax
	ret
/* end function donna_bool_guard */

