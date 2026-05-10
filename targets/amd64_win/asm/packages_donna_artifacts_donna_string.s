.data
.balign 8
__rt_fmt_ld:
	.ascii "%ld"
	.byte 0
/* end data */

.data
.balign 8
str40:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str54:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str167:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str192:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str210:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str218:
	.byte 9
	.byte 0
/* end data */

.data
.balign 8
str226:
	.byte 13
	.byte 0
/* end data */

.data
.balign 8
str234:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str248:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str289:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str374:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
str416:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str444:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str460:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
str468:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl donna_string_length
donna_string_length:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq strlen
	subq $-32, %rsp
	leave
	ret
/* end function donna_string_length */

.text
.balign 16
.globl donna_string_concat
donna_string_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	leave
	ret
/* end function donna_string_concat */

.text
.balign 16
.globl donna_string_equal
donna_string_equal:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq strcmp
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_string_equal */

.text
.balign 16
.globl donna_string_is_empty
donna_string_is_empty:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq strlen
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_string_is_empty */

.text
.balign 16
.globl donna_string_char_at
donna_string_char_at:
	endbr64
	movzbq (%rcx, %rdx, 1), %rax
	ret
/* end function donna_string_char_at */

.text
.balign 16
.globl donna_string_char_str
donna_string_char_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	addq %rdx, %rcx
	subq $32, %rsp
	movl $1, %edx
	callq strndup
	subq $-32, %rsp
	leave
	ret
/* end function donna_string_char_str */

.text
.balign 16
.globl donna_string_slice
donna_string_slice:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdx, %rax
	movq %r8, %rdx
	addq %rax, %rcx
	subq $32, %rsp
	callq strndup
	subq $-32, %rsp
	leave
	ret
/* end function donna_string_slice */

.text
.balign 16
.globl donna_string_starts_with
donna_string_starts_with:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq strlen
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	callq strlen
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq %rax, %rdx
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb16
	subq $32, %rsp
	callq strndup
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq strcmp
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	jmp Lbb17
Lbb16:
	movl $0, %eax
Lbb17:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_string_starts_with */

.text
.balign 16
.globl donna_string_ends_with
donna_string_ends_with:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq strlen
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	callq strlen
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq %rax, %rdx
	setg %dil
	movzbq %dil, %rdi
	cmpq $1, %rdi
	jz Lbb20
	subq %rdx, %rax
	addq %rax, %rcx
	subq $32, %rsp
	callq strndup
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq strcmp
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	jmp Lbb21
Lbb20:
	movl $0, %eax
Lbb21:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_string_ends_with */

.text
.balign 16
.globl donna_string_from_int
donna_string_from_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq __rt_int_to_str
	subq $-32, %rsp
	leave
	ret
/* end function donna_string_from_int */

.text
.balign 16
.globl donna_string_repeat
donna_string_repeat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str40(%rip), %r8
	callq donna_string_repeat_helper
	subq $-32, %rsp
	leave
	ret
/* end function donna_string_repeat */

.text
.balign 16
donna_string_repeat_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	cmpq $0, %rdx
	setle %sil
	movzbq %sil, %rsi
	cmpq $1, %rsi
	jz Lbb28
	subq $1, %rdx
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rcx, %rdx
	movq %rcx, %rsi
	movq %rax, %rcx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_repeat_helper
	subq $-32, %rsp
Lbb28:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_string_repeat_helper */

.text
.balign 16
.globl donna_string_reverse
donna_string_reverse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq strlen
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rax, %rdx
	subq $1, %rdx
	subq $32, %rsp
	leaq str54(%rip), %r8
	callq donna_string_reverse_helper
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function donna_string_reverse */

.text
.balign 16
donna_string_reverse_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	movq %rdx, %rsi
	cmpq $0, %rsi
	movq %rax, %rdi
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb33
	movq %rcx, %rbx
	addq %rsi, %rcx
	subq $32, %rsp
	movl $1, %edx
	callq strndup
	movq %rbx, %rcx
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	movq %rsi, %rdi
	subq $1, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_reverse_helper
	subq $-32, %rsp
	jmp Lbb34
Lbb33:
	movq %rdi, %rax
Lbb34:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_string_reverse_helper */

.text
.balign 16
.globl donna_string_contains
donna_string_contains:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_string_index_of
	subq $-32, %rsp
	cmpq $0, %rax
	setge %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_string_contains */

.text
.balign 16
.globl donna_string_index_of
donna_string_index_of:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movl $0, %r8d
	callq donna_string_index_of_from
	subq $-32, %rsp
	leave
	ret
/* end function donna_string_index_of */

.text
.balign 16
.globl donna_string_index_of_from
donna_string_index_of_from:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r8, %rdi
	movq %rdx, %rbx
	subq $32, %rsp
	movq %rcx, %rsi
	callq strlen
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq strlen
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	movq %rax, %rdi
	addq %rdx, %rdi
	cmpq %rsi, %rdi
	movq %rax, %rsi
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb43
	movq %rcx, %rdi
	addq %rsi, %rcx
	subq $32, %rsp
	callq strndup
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	callq strcmp
	movq %rbx, %rdx
	movq %rdi, %rcx
	xchgq %rax, %rsi
	subq $-32, %rsp
	cmpq $0, %rsi
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb42
	movq %rax, %r8
	addq $1, %r8
	subq $32, %rsp
	callq donna_string_index_of_from
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb44
Lbb42:
	movq %rax, (%rsi)
	jmp Lbb44
Lbb43:
	movq $-1, %rax
Lbb44:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_index_of_from */

.text
.balign 16
.globl donna_string_split
donna_string_split:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq strlen
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq strlen
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	cmpq $0, %r9
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb47
	subq $64, %rsp
	movq %rsp, %rax
	leaq donna_nil(%rip), %rsi
	movq %rsi, 48(%rax)
	movq $0, 40(%rax)
	movq $0, 32(%rax)
	callq donna_string_split_helper
	subq $-64, %rsp
	jmp Lbb48
Lbb47:
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb48:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_string_split */

.text
.balign 16
donna_string_split_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq 64(%rbp), %rsi
	movq 56(%rbp), %rbx
	movq 48(%rbp), %r12
	movq %r9, %r15
	movq %r8, %rdi
	movq %r15, %r13
	addq %rbx, %r13
	movq %r13, -24(%rbp)
	cmpq %rdi, %r13
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rcx, %r8
	addq %r12, %r8
	movq %r8, -16(%rbp)
	cmpl $0, %eax
	jnz Lbb54
	movq %rcx, %r13
	addq %rbx, %rcx
	subq $32, %rsp
	movq %rdx, %r14
	movq %r15, %rdx
	callq strndup
	movq %r14, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	callq strcmp
	movq %r15, %r9
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r10
	movq %r12, %rax
	movq -16(%rbp), %r8
	movq -24(%rbp), %r13
	subq $-32, %rsp
	cmpq $0, %r10
	setz %r10b
	movzbq %r10b, %r10
	movq %rsi, %r12
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %r10
	jz Lbb52
	movq %rbx, %r10
	addq $1, %r10
	subq $64, %rsp
	movq %rsp, %r8
	movq %r12, 48(%r8)
	movq %r10, 40(%r8)
	movq %rax, 32(%r8)
	movq %r9, %r15
	movq %rdi, %r8
	movq %rdx, %r14
	movq %rcx, %r13
	callq donna_string_split_helper
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb56
Lbb52:
	movq %r9, %r15
	movq %rdx, %r14
	movq %rbx, %rdx
	movq %r13, %rbx
	movq %rcx, %r13
	movq %r8, %rcx
	subq %rax, %rdx
	subq $32, %rsp
	callq strndup
	movq %r13, %rcx
	movq %rax, -32(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r15, %r9
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r8
	movq -32(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rax, 8(%r8)
	movq %r12, 16(%r8)
	subq $64, %rsp
	movq %rsp, %rax
	movq %r8, 48(%rax)
	movq %rbx, 40(%rax)
	movq %rbx, 32(%rax)
	movq %rdi, %r8
	callq donna_string_split_helper
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb56
Lbb54:
	movq %r8, %rcx
	movq %r12, %rbx
	movq %rdi, %rdx
	subq %rbx, %rdx
	subq $32, %rsp
	callq strndup
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rdi, 8(%rcx)
	movq %rsi, 16(%rcx)
	subq $32, %rsp
	callq donna_string_list_reverse
	subq $-32, %rsp
Lbb56:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_split_helper */

.text
.balign 16
donna_string_list_reverse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq donna_string_list_reverse_helper
	subq $-32, %rsp
	leave
	ret
/* end function donna_string_list_reverse */

.text
.balign 16
donna_string_list_reverse_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq %rax, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb61
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rsi, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq donna_string_list_reverse_helper
	subq $-32, %rsp
	jmp Lbb62
Lbb61:
	movq %rdi, %rax
Lbb62:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_string_list_reverse_helper */

.text
.balign 16
.globl donna_string_trim_start
donna_string_trim_start:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq strlen
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	movl $0, %edx
	callq donna_string_trim_start_from
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function donna_string_trim_start */

.text
.balign 16
donna_string_trim_start_from:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r8, %r12
	cmpq %r12, %rdx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb70
	movq %rcx, %rdi
	addq %rdx, %rdi
	subq $32, %rsp
	movq %rdx, %rbx
	movl $1, %edx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq strndup
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_is_ws
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb69
	movq %rdi, %rcx
	negq %rdx
	addq %r8, %rdx
	subq $32, %rsp
	callq strndup
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb71
Lbb69:
	addq $1, %rdx
	subq $32, %rsp
	callq donna_string_trim_start_from
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb71
Lbb70:
	leaq str167(%rip), %rax
Lbb71:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_trim_start_from */

.text
.balign 16
.globl donna_string_trim_end
donna_string_trim_end:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq strlen
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rax, %rdx
	subq $1, %rdx
	subq $32, %rsp
	callq donna_string_trim_end_to
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function donna_string_trim_end */

.text
.balign 16
donna_string_trim_end_to:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	cmpq $0, %rdx
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb78
	movq %rcx, %rsi
	addq %rdx, %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	movl $1, %edx
	callq strndup
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_is_ws
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb77
	addq $1, %rdx
	subq $32, %rsp
	callq strndup
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb79
Lbb77:
	subq $1, %rdx
	subq $32, %rsp
	callq donna_string_trim_end_to
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb79
Lbb78:
	leaq str192(%rip), %rax
Lbb79:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_string_trim_end_to */

.text
.balign 16
.globl donna_string_trim
donna_string_trim:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_string_trim_start
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim_end
	subq $-32, %rsp
	leave
	ret
/* end function donna_string_trim */

.text
.balign 16
donna_string_is_ws:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str210(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb91
	subq $32, %rsp
	leaq str218(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb89
	subq $32, %rsp
	leaq str226(%rip), %rdx
	movq %rcx, %rdi
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb86
	subq $32, %rsp
	leaq str234(%rip), %rdx
	callq strcmp
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, (%rdi)
	jmp Lbb88
Lbb86:
	movq $1, (%rdi)
	movl $1, %eax
Lbb88:
	movq %rax, (%rsi)
	jmp Lbb92
Lbb89:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb92
Lbb91:
	movl $1, %eax
Lbb92:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_string_is_ws */

.text
.balign 16
.globl donna_string_replace
donna_string_replace:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq strlen
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rcx
	callq strlen
	movq %r12, %r9
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	cmpq $0, %rcx
	setz %sil
	movzbq %sil, %rsi
	cmpq $1, %rsi
	jz Lbb95
	subq $64, %rsp
	movq %rsp, %rsi
	leaq str248(%rip), %rdi
	movq %rdi, 56(%rsi)
	movq $0, 48(%rsi)
	movq $0, 40(%rsi)
	movq %rcx, 32(%rsi)
	movq %rax, %rcx
	callq donna_string_replace_helper
	subq $-64, %rsp
Lbb95:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_replace */

.text
.balign 16
donna_string_replace_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq 72(%rbp), %r13
	movq %r13, -24(%rbp)
	movq 64(%rbp), %r14
	movq 56(%rbp), %rbx
	movq %rbx, %r12
	movq 48(%rbp), %rbx
	movq %r9, %rdi
	movq %r8, %r15
	movq %rbx, %rsi
	addq %r14, %rsi
	movq %rsi, -16(%rbp)
	cmpq %rdi, %rsi
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	setz %sil
	movzbq %sil, %rsi
	movq %rcx, %rax
	addq %r12, %rax
	movq %rax, -8(%rbp)
	cmpl $0, %esi
	jnz Lbb101
	movq %rcx, %rsi
	addq %r14, %rcx
	subq $32, %rsp
	movq %rdx, %r13
	movq %rbx, %rdx
	callq strndup
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	callq strcmp
	movq %r15, %r8
	movq %r13, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	movq -8(%rbp), %rax
	movq -16(%rbp), %r15
	movq -24(%rbp), %r13
	subq $-32, %rsp
	cmpq $0, %rsi
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rsi, -32(%rbp)
	cmpq $1, %r9
	jz Lbb99
	movq %r14, %r9
	addq $1, %r9
	subq $64, %rsp
	movq %rsp, %rax
	movq %r13, 56(%rax)
	movq %r9, 48(%rax)
	movq %r12, 40(%rax)
	movq %rbx, 32(%rax)
	movq %rdi, %r9
	movq %r8, %r15
	movq %rdx, %r14
	movq %rcx, %r13
	callq donna_string_replace_helper
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb103
Lbb99:
	movq %r13, %rsi
	xchgq %r14, %rdx
	movq %rcx, %r13
	movq %rax, %rcx
	movq %r12, %rax
	movq %r15, %r12
	movq %r8, %r15
	subq %rax, %rdx
	subq $32, %rsp
	callq strndup
	movq %rsi, %rcx
	movq %rax, %rdx
	movq -32(%rbp), %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %r14, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	movq %r15, %rdx
	callq __rt_str_concat
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	subq $64, %rsp
	movq %rsp, %rax
	movq %r9, 56(%rax)
	movq %r12, 48(%rax)
	movq %r12, 40(%rax)
	movq %rbx, 32(%rax)
	movq %rdi, %r9
	callq donna_string_replace_helper
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb103
Lbb101:
	movq %rax, %rcx
	movq %r13, %rsi
	movq %r12, %rbx
	movq %rdi, %rdx
	subq %rbx, %rdx
	subq $32, %rsp
	callq strndup
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb103:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_replace_helper */

.text
.balign 16
.globl donna_string_join
donna_string_join:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb112
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb108
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb109
Lbb108:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb109:
	cmpl $0, %eax
	jnz Lbb111
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %rdi
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_join
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb113
Lbb111:
	movq 8(%rcx), %rax
	jmp Lbb113
Lbb112:
	leaq str289(%rip), %rax
Lbb113:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_string_join */

.text
.balign 16
.globl donna_string_pad_left
donna_string_pad_left:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rbx
	movq %rcx, %rsi
	movq %r8, %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq strlen
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq %rdx, %rax
	setge %dil
	movzbq %dil, %rdi
	cmpq $1, %rdi
	jz Lbb116
	subq %rax, %rdx
	subq $32, %rsp
	callq donna_string_repeat
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rax, %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb117
Lbb116:
	movq %rsi, %rax
Lbb117:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_string_pad_left */

.text
.balign 16
.globl donna_string_is_digits
donna_string_is_digits:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq strlen
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	cmpq $0, %r8
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb120
	subq $32, %rsp
	movl $0, %edx
	callq donna_string_all_digits
	subq $-32, %rsp
	jmp Lbb121
Lbb120:
	movl $0, %eax
Lbb121:
	popq %rsi
	leave
	ret
/* end function donna_string_is_digits */

.text
.balign 16
donna_string_all_digits:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	cmpq %r8, %rdx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb131
	movzbq (%rcx, %rdx, 1), %rax
	cmpq $48, %rax
	setl %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb129
	cmpq $57, %rax
	setg %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb126
	addq $1, %rdx
	subq $32, %rsp
	callq donna_string_all_digits
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb128
Lbb126:
	movq $0, (%rdi)
	movl $0, %eax
Lbb128:
	movq %rax, (%rsi)
	jmp Lbb132
Lbb129:
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb132
Lbb131:
	movl $1, %eax
Lbb132:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_string_all_digits */

.text
.balign 16
.globl donna_string_to_int
donna_string_to_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq strlen
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	movl $0, %edx
	callq donna_string_trim_start_from
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq strlen
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	cmpq $0, %rdi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb137
	subq $32, %rsp
	movl $1, %edx
	movq %rcx, %rsi
	callq strndup
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str374(%rip), %rdx
	callq strcmp
	movq %rdi, %r8
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb136
	subq $32, %rsp
	movl $0, %r9d
	movl $0, %edx
	callq donna_string_parse_digits
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb138
Lbb136:
	subq $32, %rsp
	movl $0, %r9d
	movl $1, %edx
	callq donna_string_parse_digits
	subq $-32, %rsp
	negq %rax
	addq $0, %rax
	movq %rax, (%rsi)
	jmp Lbb138
Lbb137:
	movl $0, %eax
Lbb138:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_string_to_int */

.text
.balign 16
donna_string_parse_digits:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %r9, %rax
	cmpq %r8, %rdx
	setge %sil
	movzbq %sil, %rsi
	cmpq $1, %rsi
	jz Lbb148
	movq %rax, %r9
	movzbq (%rcx, %rdx, 1), %rax
	subq $48, %rax
	cmpq $0, %rax
	setl %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb146
	cmpq $9, %rax
	setg %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %r10
	jz Lbb143
	addq $1, %rdx
	imulq $10, %r9, %r9
	addq %rax, %r9
	subq $32, %rsp
	callq donna_string_parse_digits
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb145
Lbb143:
	movq %r9, %rax
	movq %rax, (%rdi)
Lbb145:
	movq %rax, (%rsi)
	jmp Lbb148
Lbb146:
	movq %r9, %rax
	movq %rax, (%rsi)
Lbb148:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_string_parse_digits */

.text
.balign 16
.globl donna_string_lowercase
donna_string_lowercase:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq strlen
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	leaq str416(%rip), %r9
	movl $0, %edx
	callq donna_string_lowercase_helper
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function donna_string_lowercase */

.text
.balign 16
donna_string_lowercase_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %r9, %rax
	movq %r8, %rbx
	movq %rdx, %rsi
	cmpq %rbx, %rsi
	setge %dl
	movzbq %dl, %rdx
	cmpq $1, %rdx
	jz Lbb157
	movq %rax, %r12
	movzbq (%rcx, %rsi, 1), %rax
	cmpq $65, %rax
	setge %dl
	movzbq %dl, %rdx
	cmpq $90, %rax
	setle %dil
	movzbq %dil, %rdi
	andq %rdi, %rdx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rdx
	jz Lbb155
	subq $32, %rsp
	movq %rsi, %rdx
	movq %rcx, %r13
	callq donna_string_char_str
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq %rdx, (%rdi)
	movq %r12, %rax
	jmp Lbb156
Lbb155:
	movq %rcx, %r13
	movq %rax, %rcx
	addq $32, %rcx
	subq $32, %rsp
	callq donna_string_char_from_code
	movq %r13, %rcx
	movq %rax, %rdx
	movq %r12, %rax
	subq $-32, %rsp
	movq %rdx, (%rdi)
Lbb156:
	movq %rsi, %rdi
	addq $1, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq __rt_str_concat
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_lowercase_helper
	subq $-32, %rsp
Lbb157:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_lowercase_helper */

.text
.balign 16
.globl donna_string_to_slug
donna_string_to_slug:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_lowercase
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq strlen
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	leaq str444(%rip), %r9
	movl $0, %edx
	callq donna_string_slug_helper
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function donna_string_to_slug */

.text
.balign 16
donna_string_slug_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r9, %rax
	movq %r8, %rbx
	movq %rdx, %rsi
	cmpq %rbx, %rsi
	setge %dl
	movzbq %dl, %rdx
	cmpq $1, %rdx
	jz Lbb171
	movq %rcx, %r13
	movzbq (%rcx, %rsi, 1), %rcx
	cmpq $32, %rcx
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb168
	subq $32, %rsp
	callq donna_string_is_slug_char
	movq %r13, %rcx
	movq %rax, %rdx
	movq %r12, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rdx
	jz Lbb165
	leaq str468(%rip), %rdx
	movq %rdx, (%r12)
	movq %rax, %r13
	leaq str468(%rip), %rax
	movq %rax, %rdx
	movq %r13, %rax
	jmp Lbb167
Lbb165:
	movq %rax, %r13
	subq $32, %rsp
	movq %rsi, %rdx
	movq %rcx, %r14
	callq donna_string_char_str
	movq %r14, %rcx
	movq %rax, %rdx
	movq %r13, %rax
	subq $-32, %rsp
	movq %rdx, (%r12)
Lbb167:
	movq %rdx, (%rdi)
	jmp Lbb170
Lbb168:
	movq %r12, %rax
	movq %r13, %rcx
	leaq str460(%rip), %rdx
	movq %rdx, (%rdi)
	leaq str460(%rip), %rdx
Lbb170:
	movq %rsi, %rdi
	addq $1, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq __rt_str_concat
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_slug_helper
	subq $-32, %rsp
Lbb171:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_slug_helper */

.text
.balign 16
donna_string_is_slug_char:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	cmpq $97, %rcx
	setge %al
	movzbq %al, %rax
	cmpq $122, %rcx
	setle %dl
	movzbq %dl, %rdx
	andq %rdx, %rax
	cmpq $1, %rax
	jz Lbb177
	cmpq $48, %rcx
	setge %al
	movzbq %al, %rax
	cmpq $57, %rcx
	setle %dl
	movzbq %dl, %rdx
	andq %rax, %rdx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb175
	cmpq $45, %rcx
	movq %rax, %rcx
	setz %al
	movzbq %al, %rax
	movq %rax, (%rcx)
	jmp Lbb178
Lbb175:
	movq $1, (%rax)
	movl $1, %eax
	jmp Lbb178
Lbb177:
	movl $1, %eax
Lbb178:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function donna_string_is_slug_char */

.text
.balign 16
__rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq strlen
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rcx
	callq strlen
	subq $-32, %rsp
	addq %rbx, %rax
	movq %rax, %rcx
	addq $1, %rcx
	subq $32, %rsp
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcpy
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcat
	movq %rsi, %rax
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

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

