.data
.balign 8
___rt_fmt_ld:
	.ascii "%ld"
	.byte 0
/* end data */

.data
.balign 8
_str40:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str54:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str145:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str170:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str188:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str196:
	.byte 9
	.byte 0
/* end data */

.data
.balign 8
_str204:
	.byte 13
	.byte 0
/* end data */

.data
.balign 8
_str212:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str225:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str310:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
_str352:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str380:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str396:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
_str404:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl _donna_string_length
_donna_string_length:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _strlen
	leave
	ret
/* end function donna_string_length */

.text
.balign 16
.globl _donna_string_concat
_donna_string_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq ___rt_str_concat
	leave
	ret
/* end function donna_string_concat */

.text
.balign 16
.globl _donna_string_equal
_donna_string_equal:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_string_equal */

.text
.balign 16
.globl _donna_string_is_empty
_donna_string_is_empty:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _strlen
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_string_is_empty */

.text
.balign 16
.globl _donna_string_char_at
_donna_string_char_at:
	endbr64
	movzbq (%rdi, %rsi, 1), %rax
	ret
/* end function donna_string_char_at */

.text
.balign 16
.globl _donna_string_char_str
_donna_string_char_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	addq %rsi, %rdi
	movl $1, %esi
	callq _strndup
	leave
	ret
/* end function donna_string_char_str */

.text
.balign 16
.globl _donna_string_slice
_donna_string_slice:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rsi, %rax
	movq %rdx, %rsi
	addq %rax, %rdi
	callq _strndup
	leave
	ret
/* end function donna_string_slice */

.text
.balign 16
.globl _donna_string_starts_with
_donna_string_starts_with:
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
	callq _strlen
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	callq _strlen
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq %rax, %rsi
	setg %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb16
	callq _strndup
	movq %rbx, %rsi
	movq %rax, %rdi
	callq _strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	jmp Lbb17
Lbb16:
	movl $0, %eax
Lbb17:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_starts_with */

.text
.balign 16
.globl _donna_string_ends_with
_donna_string_ends_with:
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
	callq _strlen
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	callq _strlen
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq %rax, %rsi
	setg %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz Lbb20
	subq %rsi, %rax
	addq %rax, %rdi
	callq _strndup
	movq %rbx, %rsi
	movq %rax, %rdi
	callq _strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	jmp Lbb21
Lbb20:
	movl $0, %eax
Lbb21:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_ends_with */

.text
.balign 16
.globl _donna_string_from_int
_donna_string_from_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq ___rt_int_to_str
	leave
	ret
/* end function donna_string_from_int */

.text
.balign 16
.globl _donna_string_repeat
_donna_string_repeat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str40(%rip), %rdx
	callq _donna_string_repeat_helper
	leave
	ret
/* end function donna_string_repeat */

.text
.balign 16
_donna_string_repeat_helper:
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
	jz Lbb28
	subq $1, %rsi
	movq %rsi, %r12
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	callq _donna_string_repeat_helper
Lbb28:
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_repeat_helper */

.text
.balign 16
.globl _donna_string_reverse
_donna_string_reverse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _strlen
	movq %rbx, %rdi
	movq %rax, %rsi
	subq $1, %rsi
	leaq _str54(%rip), %rdx
	callq _donna_string_reverse_helper
	popq %rbx
	leave
	ret
/* end function donna_string_reverse */

.text
.balign 16
_donna_string_reverse_helper:
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
	jz Lbb33
	movq %rdi, %r13
	addq %rbx, %rdi
	movl $1, %esi
	callq _strndup
	movq %r13, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	movq %rbx, %r12
	subq $1, %r12
	movq %rdi, %rbx
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	callq _donna_string_reverse_helper
	jmp Lbb34
Lbb33:
	movq %r12, %rax
Lbb34:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_reverse_helper */

.text
.balign 16
.globl _donna_string_contains
_donna_string_contains:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_string_index_of
	cmpq $0, %rax
	setge %al
	movzbq %al, %rax
	leave
	ret
/* end function donna_string_contains */

.text
.balign 16
.globl _donna_string_index_of
_donna_string_index_of:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %edx
	callq _donna_string_index_of_from
	leave
	ret
/* end function donna_string_index_of */

.text
.balign 16
.globl _donna_string_index_of_from
_donna_string_index_of_from:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_string_index_of
	leave
	ret
/* end function donna_string_index_of_from */

.text
.balign 16
.globl _donna_string_split
_donna_string_split:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	callq _strlen
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _strlen
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	cmpq $0, %rcx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb43
	subq $16, %rsp
	movq %rsp, %r8
	leaq _donna_nil(%rip), %rax
	movq %rax, 0(%r8)
	movl $0, %r9d
	movl $0, %r8d
	callq _donna_string_split_helper
	subq $-16, %rsp
	jmp Lbb44
Lbb43:
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb44:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_split */

.text
.balign 16
_donna_string_split_helper:
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
	jnz Lbb50
	movq %rdi, %rbx
	addq %r14, %rdi
	movq %r15, %rsi
	callq _strndup
	movq %rax, %rdi
	movq -24(%rbp), %rsi
	callq _strcmp
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
	jz Lbb48
	movq %r14, %r9
	addq $1, %r9
	subq $16, %rsp
	movq %rsp, %rdx
	movq %r13, 0(%rdx)
	movq %rax, %r8
	movq %rcx, %r15
	movq %r12, %rdx
	movq %rdi, %r13
	callq _donna_string_split_helper
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb52
Lbb48:
	movq %r13, %rbx
	movq %rcx, %r15
	movq %r14, %rcx
	movq %rdi, %r13
	movq %rdx, %rdi
	movq %rsi, %r14
	movq %rcx, %rsi
	subq %rax, %rsi
	callq _strndup
	movq %r13, %rdi
	movq %rax, -32(%rbp)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
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
	callq _donna_string_split_helper
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb52
Lbb50:
	movq %rdx, %rdi
	movq %r12, %rsi
	subq %r13, %rsi
	callq _strndup
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	callq _donna_string_list_reverse
Lbb52:
	movq %rbp, %rsp
	subq $96, %rsp
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
_donna_string_list_reverse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rsi
	callq _donna_string_list_reverse_helper
	leave
	ret
/* end function donna_string_list_reverse */

.text
.balign 16
_donna_string_list_reverse_helper:
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
	jz Lbb57
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	movq $1, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rax, 16(%rsi)
	callq _donna_string_list_reverse_helper
	jmp Lbb58
Lbb57:
	movq %r12, %rax
Lbb58:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_list_reverse_helper */

.text
.balign 16
.globl _donna_string_trim_start
_donna_string_trim_start:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _strlen
	movq %rbx, %rdi
	movq %rax, %rdx
	movl $0, %esi
	callq _donna_string_trim_start_from
	popq %rbx
	leave
	ret
/* end function donna_string_trim_start */

.text
.balign 16
_donna_string_trim_start_from:
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
	jz Lbb66
	movq %rdi, %r12
	addq %rsi, %r12
	movq %rsi, %r13
	movl $1, %esi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _strndup
	movq %rax, %rdi
	callq _donna_string_is_ws
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb65
	movq %r12, %rdi
	negq %rsi
	addq %rdx, %rsi
	callq _strndup
	movq %rax, (%rbx)
	jmp Lbb67
Lbb65:
	addq $1, %rsi
	callq _donna_string_trim_start_from
	movq %rax, (%rbx)
	jmp Lbb67
Lbb66:
	leaq _str145(%rip), %rax
Lbb67:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_trim_start_from */

.text
.balign 16
.globl _donna_string_trim_end
_donna_string_trim_end:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _strlen
	movq %rbx, %rdi
	movq %rax, %rsi
	subq $1, %rsi
	callq _donna_string_trim_end_to
	popq %rbx
	leave
	ret
/* end function donna_string_trim_end */

.text
.balign 16
_donna_string_trim_end_to:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	cmpq $0, %rsi
	setl %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb74
	movq %rdi, %rbx
	addq %rsi, %rdi
	movq %rsi, %r12
	movl $1, %esi
	callq _strndup
	movq %rax, %rdi
	callq _donna_string_is_ws
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb73
	addq $1, %rsi
	callq _strndup
	movq %rax, (%rbx)
	jmp Lbb75
Lbb73:
	subq $1, %rsi
	callq _donna_string_trim_end_to
	movq %rax, (%rbx)
	jmp Lbb75
Lbb74:
	leaq _str170(%rip), %rax
Lbb75:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_trim_end_to */

.text
.balign 16
.globl _donna_string_trim
_donna_string_trim:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_string_trim_start
	movq %rax, %rdi
	callq _donna_string_trim_end
	leave
	ret
/* end function donna_string_trim */

.text
.balign 16
_donna_string_is_ws:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	leaq _str188(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb87
	leaq _str196(%rip), %rsi
	movq %rdi, %rbx
	callq _strcmp
	movq %rbx, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb85
	leaq _str204(%rip), %rsi
	movq %rdi, %r12
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb82
	leaq _str212(%rip), %rsi
	callq _strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, (%r12)
	jmp Lbb84
Lbb82:
	movq $1, (%r12)
	movl $1, %eax
Lbb84:
	movq %rax, (%rbx)
	jmp Lbb88
Lbb85:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb88
Lbb87:
	movl $1, %eax
Lbb88:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_is_ws */

.text
.balign 16
.globl _donna_string_replace
_donna_string_replace:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_ffi_string_replace
	leave
	ret
/* end function donna_string_replace */

.text
.balign 16
.globl _donna_string_join
_donna_string_join:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb99
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb95
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb96
Lbb95:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb96:
	cmpl $0, %eax
	jnz Lbb98
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	movq %rsi, %r12
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_string_join
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb100
Lbb98:
	movq 8(%rdi), %rax
	jmp Lbb100
Lbb99:
	leaq _str225(%rip), %rax
Lbb100:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_join */

.text
.balign 16
.globl _donna_string_pad_left
_donna_string_pad_left:
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
	callq _strlen
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq %rsi, %rax
	setge %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz Lbb103
	subq %rax, %rsi
	callq _donna_string_repeat
	movq %rax, %rdi
	movq %rbx, %rax
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb104
Lbb103:
	movq %rbx, %rax
Lbb104:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_pad_left */

.text
.balign 16
.globl _donna_string_is_digits
_donna_string_is_digits:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _strlen
	movq %rbx, %rdi
	movq %rax, %rdx
	cmpq $0, %rdx
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb107
	movl $0, %esi
	callq _donna_string_all_digits
	jmp Lbb108
Lbb107:
	movl $0, %eax
Lbb108:
	popq %rbx
	leave
	ret
/* end function donna_string_is_digits */

.text
.balign 16
_donna_string_all_digits:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	cmpq %rdx, %rsi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb118
	movzbq (%rdi, %rsi, 1), %rax
	cmpq $48, %rax
	setl %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb116
	cmpq $57, %rax
	setg %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb113
	addq $1, %rsi
	callq _donna_string_all_digits
	movq %rax, (%r12)
	jmp Lbb115
Lbb113:
	movq $0, (%r12)
	movl $0, %eax
Lbb115:
	movq %rax, (%rbx)
	jmp Lbb119
Lbb116:
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb119
Lbb118:
	movl $1, %eax
Lbb119:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_all_digits */

.text
.balign 16
.globl _donna_string_to_int
_donna_string_to_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	callq _strlen
	movq %rbx, %rdi
	movq %rax, %rdx
	movl $0, %esi
	callq _donna_string_trim_start_from
	movq %rax, %rdi
	movq %rdi, %rbx
	callq _strlen
	movq %rbx, %rdi
	movq %rax, %r12
	cmpq $0, %r12
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb124
	movl $1, %esi
	movq %rdi, %rbx
	callq _strndup
	movq %rax, %rdi
	leaq _str310(%rip), %rsi
	callq _strcmp
	movq %r12, %rdx
	movq %rbx, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb123
	movl $0, %ecx
	movl $0, %esi
	callq _donna_string_parse_digits
	movq %rax, (%rbx)
	jmp Lbb125
Lbb123:
	movl $0, %ecx
	movl $1, %esi
	callq _donna_string_parse_digits
	negq %rax
	addq $0, %rax
	movq %rax, (%rbx)
	jmp Lbb125
Lbb124:
	movl $0, %eax
Lbb125:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_to_int */

.text
.balign 16
_donna_string_parse_digits:
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
	jz Lbb135
	movq %rax, %rcx
	movzbq (%rdi, %rsi, 1), %rax
	subq $48, %rax
	cmpq $0, %rax
	setl %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %r8
	jz Lbb133
	cmpq $9, %rax
	setg %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %r8
	jz Lbb130
	addq $1, %rsi
	imulq $10, %rcx, %rcx
	addq %rax, %rcx
	callq _donna_string_parse_digits
	movq %rax, (%r12)
	jmp Lbb132
Lbb130:
	movq %rcx, %rax
	movq %rax, (%r12)
Lbb132:
	movq %rax, (%rbx)
	jmp Lbb135
Lbb133:
	movq %rcx, %rax
	movq %rax, (%rbx)
Lbb135:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_parse_digits */

.text
.balign 16
.globl _donna_string_lowercase
_donna_string_lowercase:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _strlen
	movq %rbx, %rdi
	movq %rax, %rdx
	leaq _str352(%rip), %rcx
	movl $0, %esi
	callq _donna_string_lowercase_helper
	popq %rbx
	leave
	ret
/* end function donna_string_lowercase */

.text
.balign 16
_donna_string_lowercase_helper:
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
	jz Lbb144
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
	jz Lbb142
	movq %rbx, %rsi
	movq %rdi, %r15
	callq _donna_string_char_str
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rsi, (%r12)
	movq %r14, %rax
	jmp Lbb143
Lbb142:
	movq %rdi, %r15
	movq %rax, %rdi
	addq $32, %rdi
	callq _donna_string_char_from_code
	movq %r15, %rdi
	movq %rax, %rsi
	movq %r14, %rax
	movq %rsi, (%r12)
Lbb143:
	movq %rbx, %r12
	addq $1, %r12
	movq %rdi, %rbx
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	callq _donna_string_lowercase_helper
Lbb144:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_lowercase_helper */

.text
.balign 16
.globl _donna_string_to_slug
_donna_string_to_slug:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _donna_string_lowercase
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _strlen
	movq %rbx, %rdi
	movq %rax, %rdx
	leaq _str380(%rip), %rcx
	movl $0, %esi
	callq _donna_string_slug_helper
	popq %rbx
	leave
	ret
/* end function donna_string_to_slug */

.text
.balign 16
_donna_string_slug_helper:
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
	movq %rdx, %r15
	movq %rsi, %rbx
	cmpq %r15, %rbx
	setge %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz Lbb159
	movq %rdi, %r14
	movzbq (%rdi, %rbx, 1), %rdi
	cmpq $32, %rdi
	movq %rax, %r13
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb155
	callq _donna_string_is_slug_char
	movq %r15, %rdx
	movq %r14, %rdi
	movq %rax, %rsi
	movq %r13, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -16(%rbp)
	cmpq $1, %rsi
	jz Lbb152
	movq %rdx, %r13
	leaq _str404(%rip), %rdx
	movq %rdx, (%rcx)
	movq %rax, %r14
	leaq _str404(%rip), %rax
	movq %rax, %rsi
	movq %r14, %rax
	jmp Lbb154
Lbb152:
	movq %rax, %r14
	movq %rdx, %r13
	movq %rbx, %rsi
	movq %rdi, %r15
	callq _donna_string_char_str
	movq %r15, %rdi
	movq %rax, %rsi
	movq %r14, %rax
	movq -16(%rbp), %rcx
	movq %rsi, (%rcx)
Lbb154:
	movq %rsi, (%r12)
	jmp Lbb158
Lbb155:
	movq %r13, %rax
	movq %r15, %r13
	movq %r14, %rdi
	leaq _str396(%rip), %rcx
	movq %rcx, (%r12)
	leaq _str396(%rip), %rcx
	movq %rcx, %rsi
Lbb158:
	movq %rbx, %r12
	addq $1, %r12
	movq %rdi, %rbx
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	callq _donna_string_slug_helper
Lbb159:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_string_slug_helper */

.text
.balign 16
_donna_string_is_slug_char:
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
	jz Lbb165
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
	jz Lbb163
	cmpq $45, %rdi
	movq %rax, %rcx
	setz %al
	movzbq %al, %rax
	movq %rax, (%rcx)
	jmp Lbb166
Lbb163:
	movq $1, (%rax)
	movl $1, %eax
	jmp Lbb166
Lbb165:
	movl $1, %eax
Lbb166:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function donna_string_is_slug_char */

.text
.balign 16
___rt_str_concat:
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
	callq _strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq _strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq _malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq _strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

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

