.data
.balign 8
___rt_fmt_ld:
	.ascii "%ld"
	.byte 0
/* end data */

.text
.balign 16
.globl _donna_int_parse
_donna_int_parse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _atoi
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	popq %rbx
	leave
	ret
/* end function donna_int_parse */

.text
.balign 16
.globl _donna_int_to_string
_donna_int_to_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq ___rt_int_to_str
	leave
	ret
/* end function donna_int_to_string */

.text
.balign 16
.globl _donna_int_abs
_donna_int_abs:
	endbr64
	cmpq $0, %rdi
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	movl $0, %eax
	subq %rdi, %rax
	cmpl $0, %ecx
	cmovz %rdi, %rax
	ret
/* end function donna_int_abs */

.text
.balign 16
.globl _donna_int_min
_donna_int_min:
	endbr64
	cmpq %rsi, %rdi
	setle %al
	movzbq %al, %rax
	cmpq $1, %rax
	mov %rdi, %rax
	cmovnz %rsi, %rax
	ret
/* end function donna_int_min */

.text
.balign 16
.globl _donna_int_max
_donna_int_max:
	endbr64
	cmpq %rsi, %rdi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	mov %rdi, %rax
	cmovnz %rsi, %rax
	ret
/* end function donna_int_max */

.text
.balign 16
.globl _donna_int_clamp
_donna_int_clamp:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rsi, %rcx
	movq %rdi, %rax
	cmpq %rcx, %rax
	setl %sil
	movzbq %sil, %rsi
	cmpq $1, %rsi
	jz Lbb15
	cmpq %rdx, %rax
	setg %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rsi
	jz Lbb13
	movq %rax, (%rcx)
	jmp Lbb16
Lbb13:
	movq %rdx, %rax
	movq %rax, (%rcx)
	jmp Lbb16
Lbb15:
	movq %rcx, %rax
Lbb16:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function donna_int_clamp */

.text
.balign 16
.globl _donna_int_is_even
_donna_int_is_even:
	endbr64
	movq %rdi, %rax
	movl $2, %ecx
	cqto
	idivq %rcx
	movq %rdx, %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	ret
/* end function donna_int_is_even */

.text
.balign 16
.globl _donna_int_is_odd
_donna_int_is_odd:
	endbr64
	movq %rdi, %rax
	movl $2, %ecx
	cqto
	idivq %rcx
	movq %rdx, %rax
	cmpq $0, %rax
	setnz %al
	movzbq %al, %rax
	ret
/* end function donna_int_is_odd */

.text
.balign 16
.globl _donna_int_is_zero
_donna_int_is_zero:
	endbr64
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	ret
/* end function donna_int_is_zero */

.text
.balign 16
.globl _donna_int_is_positive
_donna_int_is_positive:
	endbr64
	cmpq $0, %rdi
	setg %al
	movzbq %al, %rax
	ret
/* end function donna_int_is_positive */

.text
.balign 16
.globl _donna_int_is_negative
_donna_int_is_negative:
	endbr64
	cmpq $0, %rdi
	setl %al
	movzbq %al, %rax
	ret
/* end function donna_int_is_negative */

.text
.balign 16
.globl _donna_int_sign
_donna_int_sign:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	cmpq $0, %rdi
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb33
	cmpq $0, %rdi
	setg %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb31
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb34
Lbb31:
	movq $1, (%rax)
	movl $1, %eax
	jmp Lbb34
Lbb33:
	movq $-1, %rax
Lbb34:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function donna_int_sign */

.text
.balign 16
.globl _donna_int_pow
_donna_int_pow:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	cmpq $0, %rsi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb37
	subq $1, %rsi
	movq %rdi, %rbx
	callq _donna_int_pow
	movq %rbx, %rdi
	imulq %rdi, %rax
	jmp Lbb38
Lbb37:
	movl $1, %eax
Lbb38:
	popq %rbx
	leave
	ret
/* end function donna_int_pow */

.text
.balign 16
.globl _donna_int_gcd
_donna_int_gcd:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rax
	movq %rsi, %rdi
	cmpq $0, %rdi
	setz %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz Lbb41
	cqto
	idivq %rdi
	movq %rdx, %rsi
	callq _donna_int_gcd
	jmp Lbb43
Lbb41:
	movq %rax, %rdi
	callq _donna_int_abs
Lbb43:
	leave
	ret
/* end function donna_int_gcd */

.text
.balign 16
.globl _donna_int_lcm
_donna_int_lcm:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r13
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb49
	cmpq $0, %r13
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb47
	movq %rdi, %r12
	imulq %r13, %rdi
	callq _donna_int_abs
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_int_gcd
	movq %rax, %rcx
	movq %r12, %rax
	cqto
	idivq %rcx
	movq %rax, (%rbx)
	jmp Lbb50
Lbb47:
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb50
Lbb49:
	movl $0, %eax
Lbb50:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_int_lcm */

.text
.balign 16
___rt_int_to_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $32, %edi
	callq _malloc
	movq %rbx, %rdx
	leaq ___rt_fmt_ld(%rip), %rsi
	movq %rax, %rdi
	movq %rax, %rbx
	movl $0, %eax
	callq _sprintf
	movq %rbx, %rax
	popq %rbx
	leave
	ret
/* end function __rt_int_to_str */

