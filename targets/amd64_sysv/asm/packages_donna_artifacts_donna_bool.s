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
	cmpq $1, %rdi
	movl $1, %ecx
	movl $0, %eax
	cmovnz %rcx, %rax
	ret
.type donna_bool_not, @function
.size donna_bool_not, .-donna_bool_not
/* end function donna_bool_not */

.text
.balign 16
.globl donna_bool_and
donna_bool_and:
	endbr64
	cmpq $1, %rdi
	movl $0, %eax
	cmovz %rsi, %rax
	ret
.type donna_bool_and, @function
.size donna_bool_and, .-donna_bool_and
/* end function donna_bool_and */

.text
.balign 16
.globl donna_bool_or
donna_bool_or:
	endbr64
	cmpq $1, %rdi
	movl $1, %eax
	cmovnz %rsi, %rax
	ret
.type donna_bool_or, @function
.size donna_bool_or, .-donna_bool_or
/* end function donna_bool_or */

.text
.balign 16
.globl donna_bool_xor
donna_bool_xor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rsi, %rax
	cmpq $1, %rdi
	jnz .Lbb8
	movq %rax, %rdi
	callq donna_bool_not
.Lbb8:
	leave
	ret
.type donna_bool_xor, @function
.size donna_bool_xor, .-donna_bool_xor
/* end function donna_bool_xor */

.text
.balign 16
.globl donna_bool_to_int
donna_bool_to_int:
	endbr64
	cmpq $1, %rdi
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
.type donna_bool_to_int, @function
.size donna_bool_to_int, .-donna_bool_to_int
/* end function donna_bool_to_int */

.text
.balign 16
.globl donna_bool_to_string
donna_bool_to_string:
	endbr64
	cmpq $1, %rdi
	leaq str37(%rip), %rcx
	leaq str36(%rip), %rax
	cmovnz %rcx, %rax
	ret
.type donna_bool_to_string, @function
.size donna_bool_to_string, .-donna_bool_to_string
/* end function donna_bool_to_string */

.text
.balign 16
.globl donna_bool_guard
donna_bool_guard:
	endbr64
	cmpq $1, %rdi
	mov %rsi, %rax
	cmovnz %rdx, %rax
	ret
.type donna_bool_guard, @function
.size donna_bool_guard, .-donna_bool_guard
/* end function donna_bool_guard */

.section .note.GNU-stack,"",@progbits
