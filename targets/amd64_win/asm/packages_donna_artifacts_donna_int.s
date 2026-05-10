.data
.balign 8
__rt_fmt_ld:
	.ascii "%ld"
	.byte 0
/* end data */

.text
.balign 16
.globl donna_int_parse
donna_int_parse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq atoi
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	leave
	ret
/* end function donna_int_parse */

.text
.balign 16
.globl donna_int_to_string
donna_int_to_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq __rt_int_to_str
	subq $-32, %rsp
	leave
	ret
/* end function donna_int_to_string */

.text
.balign 16
.globl donna_int_abs
donna_int_abs:
	endbr64
	cmpq $0, %rcx
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	movl $0, %eax
	subq %rcx, %rax
	cmpl $0, %edx
	cmovz %rcx, %rax
	ret
/* end function donna_int_abs */

.text
.balign 16
.globl donna_int_min
donna_int_min:
	endbr64
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rax
	cmpq $1, %rax
	mov %rcx, %rax
	cmovnz %rdx, %rax
	ret
/* end function donna_int_min */

.text
.balign 16
.globl donna_int_max
donna_int_max:
	endbr64
	cmpq %rdx, %rcx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	mov %rcx, %rax
	cmovnz %rdx, %rax
	ret
/* end function donna_int_max */

.text
.balign 16
.globl donna_int_clamp
donna_int_clamp:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq %r8, %rdx
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
	subq $8, %rsp
	popq %rsi
	leave
	ret
/* end function donna_int_clamp */

.text
.balign 16
.globl donna_int_is_even
donna_int_is_even:
	endbr64
	movq %rcx, %rax
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
.globl donna_int_is_odd
donna_int_is_odd:
	endbr64
	movq %rcx, %rax
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
.globl donna_int_is_zero
donna_int_is_zero:
	endbr64
	cmpq $0, %rcx
	setz %al
	movzbq %al, %rax
	ret
/* end function donna_int_is_zero */

.text
.balign 16
.globl donna_int_is_positive
donna_int_is_positive:
	endbr64
	cmpq $0, %rcx
	setg %al
	movzbq %al, %rax
	ret
/* end function donna_int_is_positive */

.text
.balign 16
.globl donna_int_is_negative
donna_int_is_negative:
	endbr64
	cmpq $0, %rcx
	setl %al
	movzbq %al, %rax
	ret
/* end function donna_int_is_negative */

.text
.balign 16
.globl donna_int_sign
donna_int_sign:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	cmpq $0, %rcx
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb33
	cmpq $0, %rcx
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
.globl donna_int_pow
donna_int_pow:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	cmpq $0, %rdx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb37
	subq $1, %rdx
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_int_pow
	movq %rsi, %rcx
	subq $-32, %rsp
	imulq %rcx, %rax
	jmp Lbb38
Lbb37:
	movl $1, %eax
Lbb38:
	popq %rsi
	leave
	ret
/* end function donna_int_pow */

.text
.balign 16
.globl donna_int_gcd
donna_int_gcd:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rax
	movq %rdx, %rcx
	cmpq $0, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpq $1, %rdx
	jz Lbb41
	cqto
	idivq %rcx
	subq $32, %rsp
	callq donna_int_gcd
	subq $-32, %rsp
	jmp Lbb43
Lbb41:
	movq %rax, %rcx
	subq $32, %rsp
	callq donna_int_abs
	subq $-32, %rsp
Lbb43:
	popq %rsi
	leave
	ret
/* end function donna_int_gcd */

.text
.balign 16
.globl donna_int_lcm
donna_int_lcm:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rbx
	cmpq $0, %rcx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb49
	cmpq $0, %rbx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb47
	movq %rcx, %rdi
	imulq %rbx, %rcx
	subq $32, %rsp
	callq donna_int_abs
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_gcd
	movq %rax, %rcx
	movq %rdi, %rax
	subq $-32, %rsp
	cqto
	idivq %rcx
	movq %rax, (%rsi)
	jmp Lbb50
Lbb47:
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb50
Lbb49:
	movl $0, %eax
Lbb50:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_int_lcm */

.text
.balign 16
__rt_int_to_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rsi, %r8
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq __rt_fmt_ld(%rip), %rdx
	movq %rsi, %rcx
	callq sprintf
	movq %rsi, %rax
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function __rt_int_to_str */

