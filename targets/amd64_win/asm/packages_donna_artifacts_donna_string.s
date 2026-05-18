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
str145:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str170:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str188:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str196:
	.byte 9
	.byte 0
/* end data */

.data
.balign 8
str204:
	.byte 13
	.byte 0
/* end data */

.data
.balign 8
str212:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str225:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str310:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
str352:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str380:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str396:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
str404:
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
	subq $32, %rsp
	callq donna_ffi_string_index_of
	subq $-32, %rsp
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
	jz Lbb43
	subq $64, %rsp
	movq %rsp, %rax
	leaq donna_nil(%rip), %rsi
	movq %rsi, 48(%rax)
	movq $0, 40(%rax)
	movq $0, 32(%rax)
	callq donna_string_split_helper
	subq $-64, %rsp
	jmp Lbb44
Lbb43:
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
Lbb44:
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
	jnz Lbb50
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
	jz Lbb48
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
	jmp Lbb52
Lbb48:
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
	jmp Lbb52
Lbb50:
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
Lbb52:
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
	jz Lbb57
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
	jmp Lbb58
Lbb57:
	movq %rdi, %rax
Lbb58:
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
	jz Lbb66
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
	jz Lbb65
	movq %rdi, %rcx
	negq %rdx
	addq %r8, %rdx
	subq $32, %rsp
	callq strndup
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb67
Lbb65:
	addq $1, %rdx
	subq $32, %rsp
	callq donna_string_trim_start_from
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb67
Lbb66:
	leaq str145(%rip), %rax
Lbb67:
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
	jz Lbb74
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
	jz Lbb73
	addq $1, %rdx
	subq $32, %rsp
	callq strndup
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb75
Lbb73:
	subq $1, %rdx
	subq $32, %rsp
	callq donna_string_trim_end_to
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb75
Lbb74:
	leaq str170(%rip), %rax
Lbb75:
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
	leaq str188(%rip), %rdx
	movq %rcx, %rsi
	callq strcmp
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb87
	subq $32, %rsp
	leaq str196(%rip), %rdx
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
	jz Lbb85
	subq $32, %rsp
	leaq str204(%rip), %rdx
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
	jz Lbb82
	subq $32, %rsp
	leaq str212(%rip), %rdx
	callq strcmp
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, (%rdi)
	jmp Lbb84
Lbb82:
	movq $1, (%rdi)
	movl $1, %eax
Lbb84:
	movq %rax, (%rsi)
	jmp Lbb88
Lbb85:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb88
Lbb87:
	movl $1, %eax
Lbb88:
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
	subq $32, %rsp
	callq donna_ffi_string_replace
	subq $-32, %rsp
	leave
	ret
/* end function donna_string_replace */

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
	jz Lbb99
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb95
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb96
Lbb95:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb96:
	cmpl $0, %eax
	jnz Lbb98
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
	jmp Lbb100
Lbb98:
	movq 8(%rcx), %rax
	jmp Lbb100
Lbb99:
	leaq str225(%rip), %rax
Lbb100:
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
	jz Lbb103
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
	jmp Lbb104
Lbb103:
	movq %rsi, %rax
Lbb104:
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
	jz Lbb107
	subq $32, %rsp
	movl $0, %edx
	callq donna_string_all_digits
	subq $-32, %rsp
	jmp Lbb108
Lbb107:
	movl $0, %eax
Lbb108:
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
	jz Lbb118
	movzbq (%rcx, %rdx, 1), %rax
	cmpq $48, %rax
	setl %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb116
	cmpq $57, %rax
	setg %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb113
	addq $1, %rdx
	subq $32, %rsp
	callq donna_string_all_digits
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb115
Lbb113:
	movq $0, (%rdi)
	movl $0, %eax
Lbb115:
	movq %rax, (%rsi)
	jmp Lbb119
Lbb116:
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb119
Lbb118:
	movl $1, %eax
Lbb119:
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
	jz Lbb124
	subq $32, %rsp
	movl $1, %edx
	movq %rcx, %rsi
	callq strndup
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str310(%rip), %rdx
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
	jz Lbb123
	subq $32, %rsp
	movl $0, %r9d
	movl $0, %edx
	callq donna_string_parse_digits
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb125
Lbb123:
	subq $32, %rsp
	movl $0, %r9d
	movl $1, %edx
	callq donna_string_parse_digits
	subq $-32, %rsp
	negq %rax
	addq $0, %rax
	movq %rax, (%rsi)
	jmp Lbb125
Lbb124:
	movl $0, %eax
Lbb125:
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
	jz Lbb135
	movq %rax, %r9
	movzbq (%rcx, %rdx, 1), %rax
	subq $48, %rax
	cmpq $0, %rax
	setl %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb133
	cmpq $9, %rax
	setg %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %r10
	jz Lbb130
	addq $1, %rdx
	imulq $10, %r9, %r9
	addq %rax, %r9
	subq $32, %rsp
	callq donna_string_parse_digits
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb132
Lbb130:
	movq %r9, %rax
	movq %rax, (%rdi)
Lbb132:
	movq %rax, (%rsi)
	jmp Lbb135
Lbb133:
	movq %r9, %rax
	movq %rax, (%rsi)
Lbb135:
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
	leaq str352(%rip), %r9
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
	jz Lbb144
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
	jz Lbb142
	subq $32, %rsp
	movq %rsi, %rdx
	movq %rcx, %r13
	callq donna_string_char_str
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq %rdx, (%rdi)
	movq %r12, %rax
	jmp Lbb143
Lbb142:
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
Lbb143:
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
Lbb144:
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
	leaq str380(%rip), %r9
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
	jz Lbb158
	movq %rcx, %r13
	movzbq (%rcx, %rsi, 1), %rcx
	cmpq $32, %rcx
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb155
	subq $32, %rsp
	callq donna_string_is_slug_char
	movq %r13, %rcx
	movq %rax, %rdx
	movq %r12, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rdx
	jz Lbb152
	leaq str404(%rip), %rdx
	movq %rdx, (%r12)
	movq %rax, %r13
	leaq str404(%rip), %rax
	movq %rax, %rdx
	movq %r13, %rax
	jmp Lbb154
Lbb152:
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
Lbb154:
	movq %rdx, (%rdi)
	jmp Lbb157
Lbb155:
	movq %r12, %rax
	movq %r13, %rcx
	leaq str396(%rip), %rdx
	movq %rdx, (%rdi)
	leaq str396(%rip), %rdx
Lbb157:
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
Lbb158:
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
	jz Lbb164
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
	jz Lbb162
	cmpq $45, %rcx
	movq %rax, %rcx
	setz %al
	movzbq %al, %rax
	movq %rax, (%rcx)
	jmp Lbb165
Lbb162:
	movq $1, (%rax)
	movl $1, %eax
	jmp Lbb165
Lbb164:
	movl $1, %eax
Lbb165:
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

