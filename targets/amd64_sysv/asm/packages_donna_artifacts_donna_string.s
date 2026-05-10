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
	callq strlen
	leave
	ret
.type donna_string_length, @function
.size donna_string_length, .-donna_string_length
/* end function donna_string_length */

.text
.balign 16
.globl donna_string_concat
donna_string_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq __rt_str_concat
	leave
	ret
.type donna_string_concat, @function
.size donna_string_concat, .-donna_string_concat
/* end function donna_string_concat */

.text
.balign 16
.globl donna_string_equal
donna_string_equal:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
.type donna_string_equal, @function
.size donna_string_equal, .-donna_string_equal
/* end function donna_string_equal */

.text
.balign 16
.globl donna_string_is_empty
donna_string_is_empty:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq strlen
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
.type donna_string_is_empty, @function
.size donna_string_is_empty, .-donna_string_is_empty
/* end function donna_string_is_empty */

.text
.balign 16
.globl donna_string_char_at
donna_string_char_at:
	endbr64
	movzbq (%rdi, %rsi, 1), %rax
	ret
.type donna_string_char_at, @function
.size donna_string_char_at, .-donna_string_char_at
/* end function donna_string_char_at */

.text
.balign 16
.globl donna_string_char_str
donna_string_char_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	addq %rsi, %rdi
	movl $1, %esi
	callq strndup
	leave
	ret
.type donna_string_char_str, @function
.size donna_string_char_str, .-donna_string_char_str
/* end function donna_string_char_str */

.text
.balign 16
.globl donna_string_slice
donna_string_slice:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rsi, %rax
	movq %rdx, %rsi
	addq %rax, %rdi
	callq strndup
	leave
	ret
.type donna_string_slice, @function
.size donna_string_slice, .-donna_string_slice
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
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	movq %rdi, %r12
	movq %rbx, %rdi
	callq strlen
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	callq strlen
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq %rax, %rsi
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb16
	callq strndup
	movq %rbx, %rsi
	movq %rax, %rdi
	callq strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	jmp .Lbb17
.Lbb16:
	movl $0, %eax
.Lbb17:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_starts_with, @function
.size donna_string_starts_with, .-donna_string_starts_with
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
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	movq %rdi, %r12
	movq %rbx, %rdi
	callq strlen
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	callq strlen
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq %rax, %rsi
	setg %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz .Lbb20
	subq %rsi, %rax
	addq %rax, %rdi
	callq strndup
	movq %rbx, %rsi
	movq %rax, %rdi
	callq strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	jmp .Lbb21
.Lbb20:
	movl $0, %eax
.Lbb21:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_ends_with, @function
.size donna_string_ends_with, .-donna_string_ends_with
/* end function donna_string_ends_with */

.text
.balign 16
.globl donna_string_from_int
donna_string_from_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq __rt_int_to_str
	leave
	ret
.type donna_string_from_int, @function
.size donna_string_from_int, .-donna_string_from_int
/* end function donna_string_from_int */

.text
.balign 16
.globl donna_string_repeat
donna_string_repeat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq str40(%rip), %rdx
	callq donna_string_repeat_helper
	leave
	ret
.type donna_string_repeat, @function
.size donna_string_repeat, .-donna_string_repeat
/* end function donna_string_repeat */

.text
.balign 16
donna_string_repeat_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdx, %rax
	cmpq $0, %rsi
	setle %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz .Lbb28
	subq $1, %rsi
	movq %rsi, %r12
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %rax, %rdi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	callq donna_string_repeat_helper
.Lbb28:
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_repeat_helper, @function
.size donna_string_repeat_helper, .-donna_string_repeat_helper
/* end function donna_string_repeat_helper */

.text
.balign 16
.globl donna_string_reverse
donna_string_reverse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq strlen
	movq %rbx, %rdi
	movq %rax, %rsi
	subq $1, %rsi
	leaq str54(%rip), %rdx
	callq donna_string_reverse_helper
	popq %rbx
	leave
	ret
.type donna_string_reverse, @function
.size donna_string_reverse, .-donna_string_reverse
/* end function donna_string_reverse */

.text
.balign 16
donna_string_reverse_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %rax
	movq %rsi, %rbx
	cmpq $0, %rbx
	movq %rax, %r12
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb33
	movq %rdi, %r13
	addq %rbx, %rdi
	movl $1, %esi
	callq strndup
	movq %r13, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	movq %rbx, %r12
	subq $1, %r12
	movq %rdi, %rbx
	movq %rax, %rdi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	callq donna_string_reverse_helper
	jmp .Lbb34
.Lbb33:
	movq %r12, %rax
.Lbb34:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_reverse_helper, @function
.size donna_string_reverse_helper, .-donna_string_reverse_helper
/* end function donna_string_reverse_helper */

.text
.balign 16
.globl donna_string_contains
donna_string_contains:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_string_index_of
	cmpq $0, %rax
	setge %al
	movzbq %al, %rax
	leave
	ret
.type donna_string_contains, @function
.size donna_string_contains, .-donna_string_contains
/* end function donna_string_contains */

.text
.balign 16
.globl donna_string_index_of
donna_string_index_of:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %edx
	callq donna_string_index_of_from
	leave
	ret
.type donna_string_index_of, @function
.size donna_string_index_of, .-donna_string_index_of
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
	pushq %r13
	pushq %r14
	movq %rdx, %r12
	movq %rsi, %r13
	movq %rdi, %rbx
	callq strlen
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r14
	movq %r13, %rdi
	callq strlen
	movq %r14, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	movq %rax, %rcx
	addq %rsi, %rcx
	cmpq %rbx, %rcx
	movq %rax, %rbx
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb43
	movq %rdi, %r12
	addq %rbx, %rdi
	callq strndup
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	callq strcmp
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz .Lbb42
	movq %rax, %rdx
	addq $1, %rdx
	callq donna_string_index_of_from
	movq %rax, (%rbx)
	jmp .Lbb44
.Lbb42:
	movq %rax, (%rbx)
	jmp .Lbb44
.Lbb43:
	movq $-1, %rax
.Lbb44:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_index_of_from, @function
.size donna_string_index_of_from, .-donna_string_index_of_from
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
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	callq strlen
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq strlen
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	cmpq $0, %rcx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb47
	subq $16, %rsp
	movq %rsp, %r8
	leaq donna_nil(%rip), %rax
	movq %rax, 0(%r8)
	movl $0, %r9d
	movl $0, %r8d
	callq donna_string_split_helper
	subq $-16, %rsp
	jmp .Lbb48
.Lbb47:
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
.Lbb48:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_split, @function
.size donna_string_split, .-donna_string_split
/* end function donna_string_split */

.text
.balign 16
donna_string_split_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq 16(%rbp), %rbx
	movq %rbx, -16(%rbp)
	movq %r9, %r14
	movq %r8, %r13
	movq %rcx, %r15
	movq %rdx, %r12
	movq %rsi, -24(%rbp)
	movq %r15, %r8
	addq %r14, %r8
	movq %r8, -48(%rbp)
	cmpq %r12, %r8
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rdi, %rdx
	addq %r13, %rdx
	movq %rdx, -8(%rbp)
	cmpl $0, %eax
	jnz .Lbb54
	movq %rdi, %rbx
	addq %r14, %rdi
	movq %r15, %rsi
	callq strndup
	movq %rax, %rdi
	movq -24(%rbp), %rsi
	callq strcmp
	movq %r15, %rcx
	movq %rbx, %rdi
	movq %rax, %r8
	movq %r13, %rax
	movq -8(%rbp), %rdx
	movq -16(%rbp), %rbx
	movq -24(%rbp), %rsi
	cmpq $0, %r8
	setz %r8b
	movzbq %r8b, %r8
	movq %rbx, %r13
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -40(%rbp)
	cmpq $1, %r8
	jz .Lbb52
	movq %r14, %r9
	addq $1, %r9
	subq $16, %rsp
	movq %rsp, %rdx
	movq %r13, 0(%rdx)
	movq %rax, %r8
	movq %rcx, %r15
	movq %r12, %rdx
	movq %rdi, %r13
	callq donna_string_split_helper
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb56
.Lbb52:
	movq %r13, %rbx
	movq %rcx, %r15
	movq %r14, %rcx
	movq %rdi, %r13
	movq %rdx, %rdi
	movq %rsi, %r14
	movq %rcx, %rsi
	subq %rax, %rsi
	callq strndup
	movq %r13, %rdi
	movq %rax, -32(%rbp)
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r15, %rcx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rbx, %r13
	movq -40(%rbp), %rbx
	movq -32(%rbp), %rdx
	movq -48(%rbp), %r8
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r13, 16(%rax)
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rax, 0(%rdx)
	movq %r8, %r9
	movq %r12, %rdx
	callq donna_string_split_helper
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb56
.Lbb54:
	movq %rdx, %rdi
	movq %r12, %rsi
	subq %r13, %rsi
	callq strndup
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	callq donna_string_list_reverse
.Lbb56:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_split_helper, @function
.size donna_string_split_helper, .-donna_string_split_helper
/* end function donna_string_split_helper */

.text
.balign 16
donna_string_list_reverse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq donna_nil(%rip), %rsi
	callq donna_string_list_reverse_helper
	leave
	ret
.type donna_string_list_reverse, @function
.size donna_string_list_reverse, .-donna_string_list_reverse
/* end function donna_string_list_reverse */

.text
.balign 16
donna_string_list_reverse_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rax
	movq %rax, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb61
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	movq $1, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rax, 16(%rsi)
	callq donna_string_list_reverse_helper
	jmp .Lbb62
.Lbb61:
	movq %r12, %rax
.Lbb62:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_list_reverse_helper, @function
.size donna_string_list_reverse_helper, .-donna_string_list_reverse_helper
/* end function donna_string_list_reverse_helper */

.text
.balign 16
.globl donna_string_trim_start
donna_string_trim_start:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq strlen
	movq %rbx, %rdi
	movq %rax, %rdx
	movl $0, %esi
	callq donna_string_trim_start_from
	popq %rbx
	leave
	ret
.type donna_string_trim_start, @function
.size donna_string_trim_start, .-donna_string_trim_start
/* end function donna_string_trim_start */

.text
.balign 16
donna_string_trim_start_from:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %r14
	cmpq %r14, %rsi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb70
	movq %rdi, %r12
	addq %rsi, %r12
	movq %rsi, %r13
	movl $1, %esi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq strndup
	movq %rax, %rdi
	callq donna_string_is_ws
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb69
	movq %r12, %rdi
	negq %rsi
	addq %rdx, %rsi
	callq strndup
	movq %rax, (%rbx)
	jmp .Lbb71
.Lbb69:
	addq $1, %rsi
	callq donna_string_trim_start_from
	movq %rax, (%rbx)
	jmp .Lbb71
.Lbb70:
	leaq str167(%rip), %rax
.Lbb71:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_trim_start_from, @function
.size donna_string_trim_start_from, .-donna_string_trim_start_from
/* end function donna_string_trim_start_from */

.text
.balign 16
.globl donna_string_trim_end
donna_string_trim_end:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq strlen
	movq %rbx, %rdi
	movq %rax, %rsi
	subq $1, %rsi
	callq donna_string_trim_end_to
	popq %rbx
	leave
	ret
.type donna_string_trim_end, @function
.size donna_string_trim_end, .-donna_string_trim_end
/* end function donna_string_trim_end */

.text
.balign 16
donna_string_trim_end_to:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	cmpq $0, %rsi
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb78
	movq %rdi, %rbx
	addq %rsi, %rdi
	movq %rsi, %r12
	movl $1, %esi
	callq strndup
	movq %rax, %rdi
	callq donna_string_is_ws
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb77
	addq $1, %rsi
	callq strndup
	movq %rax, (%rbx)
	jmp .Lbb79
.Lbb77:
	subq $1, %rsi
	callq donna_string_trim_end_to
	movq %rax, (%rbx)
	jmp .Lbb79
.Lbb78:
	leaq str192(%rip), %rax
.Lbb79:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_trim_end_to, @function
.size donna_string_trim_end_to, .-donna_string_trim_end_to
/* end function donna_string_trim_end_to */

.text
.balign 16
.globl donna_string_trim
donna_string_trim:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_string_trim_start
	movq %rax, %rdi
	callq donna_string_trim_end
	leave
	ret
.type donna_string_trim, @function
.size donna_string_trim, .-donna_string_trim
/* end function donna_string_trim */

.text
.balign 16
donna_string_is_ws:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	leaq str210(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb91
	leaq str218(%rip), %rsi
	movq %rdi, %rbx
	callq strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb89
	leaq str226(%rip), %rsi
	movq %rdi, %r12
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb86
	leaq str234(%rip), %rsi
	callq strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, (%r12)
	jmp .Lbb88
.Lbb86:
	movq $1, (%r12)
	movl $1, %eax
.Lbb88:
	movq %rax, (%rbx)
	jmp .Lbb92
.Lbb89:
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb92
.Lbb91:
	movl $1, %eax
.Lbb92:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_is_ws, @function
.size donna_string_is_ws, .-donna_string_is_ws
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
	pushq %r13
	pushq %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq strlen
	movq %rax, %r14
	movq %r12, %rdi
	callq strlen
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, %r8
	movq %rbx, %rax
	cmpq $0, %r8
	setz %dil
	movzbq %dil, %rdi
	cmpq $1, %rdi
	jz .Lbb95
	subq $16, %rsp
	movq %rsp, %rdi
	leaq str248(%rip), %r9
	movq %r9, 8(%rdi)
	movq $0, 0(%rdi)
	movl $0, %r9d
	movq %rax, %rdi
	callq donna_string_replace_helper
	subq $-16, %rsp
.Lbb95:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_replace, @function
.size donna_string_replace, .-donna_string_replace
/* end function donna_string_replace */

.text
.balign 16
donna_string_replace_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq 24(%rbp), %rbx
	movq %rbx, -24(%rbp)
	movq 16(%rbp), %r14
	movq %r9, %r13
	movq %r8, %r15
	movq %rcx, %r12
	movq %rdx, -32(%rbp)
	movq %rsi, -16(%rbp)
	movq %r15, %r9
	addq %r14, %r9
	movq %r9, -48(%rbp)
	cmpq %r12, %r9
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rdi, %r9
	addq %r13, %r9
	movq %r9, -8(%rbp)
	cmpl $0, %eax
	jnz .Lbb101
	movq %rdi, %rbx
	addq %r14, %rdi
	movq %r15, %rsi
	callq strndup
	movq %rax, %rdi
	movq -16(%rbp), %rsi
	callq strcmp
	movq %r15, %r8
	movq %r14, %rcx
	movq %rbx, %rdi
	movq %rax, %r10
	movq %r13, %rax
	movq -8(%rbp), %r9
	movq -24(%rbp), %r14
	movq -32(%rbp), %rdx
	movq -16(%rbp), %rsi
	cmpq $0, %r10
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -40(%rbp)
	cmpq $1, %r10
	jz .Lbb99
	addq $1, %rcx
	subq $16, %rsp
	movq %rsp, %r9
	movq %r14, 8(%r9)
	movq %rcx, 0(%r9)
	movq %rax, %r9
	movq %r8, %r15
	movq %r12, %rcx
	movq %rdx, %r14
	callq donna_string_replace_helper
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb103
.Lbb99:
	movq %r8, %r15
	movq %rdi, %rbx
	movq %r9, %rdi
	movq %rsi, %r13
	movq %rcx, %rsi
	subq %rax, %rsi
	callq strndup
	movq %r14, %rdi
	movq %rax, %rsi
	movq -32(%rbp), %r14
	callq __rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq %r14, %rsi
	callq __rt_str_concat
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq -40(%rbp), %rbx
	movq -48(%rbp), %r9
	subq $16, %rsp
	movq %rsp, %rax
	movq %rcx, 8(%rax)
	movq %r9, 0(%rax)
	movq %r12, %rcx
	callq donna_string_replace_helper
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb103
.Lbb101:
	movq %r9, %rdi
	movq %r12, %rsi
	subq %r13, %rsi
	callq strndup
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
.Lbb103:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_replace_helper, @function
.size donna_string_replace_helper, .-donna_string_replace_helper
/* end function donna_string_replace_helper */

.text
.balign 16
.globl donna_string_join
donna_string_join:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb112
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb108
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb109
.Lbb108:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb109:
	cmpl $0, %eax
	jnz .Lbb111
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	movq %rsi, %r12
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_string_join
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	jmp .Lbb113
.Lbb111:
	movq 8(%rdi), %rax
	jmp .Lbb113
.Lbb112:
	leaq str289(%rip), %rax
.Lbb113:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_join, @function
.size donna_string_join, .-donna_string_join
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
	pushq %r12
	pushq %r13
	movq %rsi, %r13
	movq %rdi, %rbx
	movq %rdx, %rdi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq strlen
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq %rsi, %rax
	setge %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz .Lbb116
	subq %rax, %rsi
	callq donna_string_repeat
	movq %rax, %rdi
	movq %rbx, %rax
	movq %rax, %rsi
	callq __rt_str_concat
	jmp .Lbb117
.Lbb116:
	movq %rbx, %rax
.Lbb117:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_pad_left, @function
.size donna_string_pad_left, .-donna_string_pad_left
/* end function donna_string_pad_left */

.text
.balign 16
.globl donna_string_is_digits
donna_string_is_digits:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq strlen
	movq %rbx, %rdi
	movq %rax, %rdx
	cmpq $0, %rdx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb120
	movl $0, %esi
	callq donna_string_all_digits
	jmp .Lbb121
.Lbb120:
	movl $0, %eax
.Lbb121:
	popq %rbx
	leave
	ret
.type donna_string_is_digits, @function
.size donna_string_is_digits, .-donna_string_is_digits
/* end function donna_string_is_digits */

.text
.balign 16
donna_string_all_digits:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	cmpq %rdx, %rsi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb131
	movzbq (%rdi, %rsi, 1), %rax
	cmpq $48, %rax
	setl %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz .Lbb129
	cmpq $57, %rax
	setg %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb126
	addq $1, %rsi
	callq donna_string_all_digits
	movq %rax, (%r12)
	jmp .Lbb128
.Lbb126:
	movq $0, (%r12)
	movl $0, %eax
.Lbb128:
	movq %rax, (%rbx)
	jmp .Lbb132
.Lbb129:
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb132
.Lbb131:
	movl $1, %eax
.Lbb132:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_all_digits, @function
.size donna_string_all_digits, .-donna_string_all_digits
/* end function donna_string_all_digits */

.text
.balign 16
.globl donna_string_to_int
donna_string_to_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	callq strlen
	movq %rbx, %rdi
	movq %rax, %rdx
	movl $0, %esi
	callq donna_string_trim_start_from
	movq %rax, %rdi
	movq %rdi, %rbx
	callq strlen
	movq %rbx, %rdi
	movq %rax, %r12
	cmpq $0, %r12
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb137
	movl $1, %esi
	movq %rdi, %rbx
	callq strndup
	movq %rax, %rdi
	leaq str374(%rip), %rsi
	callq strcmp
	movq %r12, %rdx
	movq %rbx, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb136
	movl $0, %ecx
	movl $0, %esi
	callq donna_string_parse_digits
	movq %rax, (%rbx)
	jmp .Lbb138
.Lbb136:
	movl $0, %ecx
	movl $1, %esi
	callq donna_string_parse_digits
	negq %rax
	addq $0, %rax
	movq %rax, (%rbx)
	jmp .Lbb138
.Lbb137:
	movl $0, %eax
.Lbb138:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_to_int, @function
.size donna_string_to_int, .-donna_string_to_int
/* end function donna_string_to_int */

.text
.balign 16
donna_string_parse_digits:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rcx, %rax
	cmpq %rdx, %rsi
	setge %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz .Lbb148
	movq %rax, %rcx
	movzbq (%rdi, %rsi, 1), %rax
	subq $48, %rax
	cmpq $0, %rax
	setl %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %r8
	jz .Lbb146
	cmpq $9, %rax
	setg %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %r8
	jz .Lbb143
	addq $1, %rsi
	imulq $10, %rcx, %rcx
	addq %rax, %rcx
	callq donna_string_parse_digits
	movq %rax, (%r12)
	jmp .Lbb145
.Lbb143:
	movq %rcx, %rax
	movq %rax, (%r12)
.Lbb145:
	movq %rax, (%rbx)
	jmp .Lbb148
.Lbb146:
	movq %rcx, %rax
	movq %rax, (%rbx)
.Lbb148:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_parse_digits, @function
.size donna_string_parse_digits, .-donna_string_parse_digits
/* end function donna_string_parse_digits */

.text
.balign 16
.globl donna_string_lowercase
donna_string_lowercase:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq strlen
	movq %rbx, %rdi
	movq %rax, %rdx
	leaq str416(%rip), %rcx
	movl $0, %esi
	callq donna_string_lowercase_helper
	popq %rbx
	leave
	ret
.type donna_string_lowercase, @function
.size donna_string_lowercase, .-donna_string_lowercase
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
	pushq %r14
	pushq %r15
	movq %rcx, %rax
	movq %rsi, %rbx
	cmpq %rdx, %rbx
	setge %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz .Lbb157
	movq %rax, %r14
	movzbq (%rdi, %rbx, 1), %rax
	cmpq $65, %rax
	setge %cl
	movzbq %cl, %rcx
	cmpq $90, %rax
	movq %rdx, %r13
	setle %dl
	movzbq %dl, %rdx
	andq %rdx, %rcx
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rcx
	jz .Lbb155
	movq %rbx, %rsi
	movq %rdi, %r15
	callq donna_string_char_str
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rsi, (%r12)
	movq %r14, %rax
	jmp .Lbb156
.Lbb155:
	movq %rdi, %r15
	movq %rax, %rdi
	addq $32, %rdi
	callq donna_string_char_from_code
	movq %r15, %rdi
	movq %rax, %rsi
	movq %r14, %rax
	movq %rsi, (%r12)
.Lbb156:
	movq %rbx, %r12
	addq $1, %r12
	movq %rdi, %rbx
	movq %rax, %rdi
	callq __rt_str_concat
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	callq donna_string_lowercase_helper
.Lbb157:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_lowercase_helper, @function
.size donna_string_lowercase_helper, .-donna_string_lowercase_helper
/* end function donna_string_lowercase_helper */

.text
.balign 16
.globl donna_string_to_slug
donna_string_to_slug:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq donna_string_lowercase
	movq %rbx, %rdi
	movq %rax, %rbx
	callq strlen
	movq %rbx, %rdi
	movq %rax, %rdx
	leaq str444(%rip), %rcx
	movl $0, %esi
	callq donna_string_slug_helper
	popq %rbx
	leave
	ret
.type donna_string_to_slug, @function
.size donna_string_to_slug, .-donna_string_to_slug
/* end function donna_string_to_slug */

.text
.balign 16
donna_string_slug_helper:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %rax
	movq %rdx, %r13
	movq %rsi, %rbx
	cmpq %r13, %rbx
	setge %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz .Lbb172
	movq %rdi, %r15
	movzbq (%rdi, %rbx, 1), %rdi
	cmpq $32, %rdi
	movq %rax, %r14
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -16(%rbp)
	cmpq $1, %rax
	jz .Lbb168
	callq donna_string_is_slug_char
	movq %r15, %rdi
	movq %rax, %rcx
	movq %r14, %rax
	movq %r12, %r14
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rcx
	jz .Lbb165
	leaq str468(%rip), %rcx
	movq %rcx, (%r12)
	movq %rax, %r12
	leaq str468(%rip), %rax
	movq %rax, %rsi
	movq %r12, %rax
	movq %r14, %r12
	jmp .Lbb167
.Lbb165:
	movq %r12, %r14
	movq %rax, %r12
	movq %rbx, %rsi
	movq %rdi, %r15
	callq donna_string_char_str
	movq %r15, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	movq -16(%rbp), %r12
	movq %rsi, (%r14)
.Lbb167:
	movq %rsi, (%r12)
	jmp .Lbb171
.Lbb168:
	movq %r14, %rax
	movq %r15, %rdi
	leaq str460(%rip), %rcx
	movq %rcx, (%r12)
	leaq str460(%rip), %rcx
	movq %rcx, %rsi
.Lbb171:
	movq %rbx, %r12
	addq $1, %r12
	movq %rdi, %rbx
	movq %rax, %rdi
	callq __rt_str_concat
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	callq donna_string_slug_helper
.Lbb172:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type donna_string_slug_helper, @function
.size donna_string_slug_helper, .-donna_string_slug_helper
/* end function donna_string_slug_helper */

.text
.balign 16
donna_string_is_slug_char:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	cmpq $97, %rdi
	setge %al
	movzbq %al, %rax
	cmpq $122, %rdi
	setle %cl
	movzbq %cl, %rcx
	andq %rcx, %rax
	cmpq $1, %rax
	jz .Lbb178
	cmpq $48, %rdi
	setge %al
	movzbq %al, %rax
	cmpq $57, %rdi
	setle %cl
	movzbq %cl, %rcx
	andq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb176
	cmpq $45, %rdi
	movq %rax, %rcx
	setz %al
	movzbq %al, %rax
	movq %rax, (%rcx)
	jmp .Lbb179
.Lbb176:
	movq $1, (%rax)
	movl $1, %eax
	jmp .Lbb179
.Lbb178:
	movl $1, %eax
.Lbb179:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type donna_string_is_slug_char, @function
.size donna_string_is_slug_char, .-donna_string_is_slug_char
/* end function donna_string_is_slug_char */

.text
.balign 16
__rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.text
.balign 16
__rt_int_to_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %rbx, %rdx
	leaq __rt_fmt_ld(%rip), %rsi
	movq %rax, %rdi
	movq %rax, %rbx
	movl $0, %eax
	callq sprintf
	movq %rbx, %rax
	popq %rbx
	leave
	ret
.type __rt_int_to_str, @function
.size __rt_int_to_str, .-__rt_int_to_str
/* end function __rt_int_to_str */

.section .note.GNU-stack,"",@progbits
