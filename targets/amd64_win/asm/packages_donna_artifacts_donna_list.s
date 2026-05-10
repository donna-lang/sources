.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl donna_list_length
donna_list_length:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb2
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq donna_list_length
	subq $-32, %rsp
	addq $1, %rax
	jmp Lbb3
Lbb2:
	movl $0, %eax
Lbb3:
	leave
	ret
/* end function donna_list_length */

.text
.balign 16
.globl donna_list_head
donna_list_head:
	endbr64
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb6
	movq 8(%rcx), %rax
Lbb6:
	ret
/* end function donna_list_head */

.text
.balign 16
.globl donna_list_tail
donna_list_tail:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb9
	movq 16(%rcx), %rax
	jmp Lbb10
Lbb9:
	leaq donna_nil(%rip), %rax
Lbb10:
	ret
/* end function donna_list_tail */

.text
.balign 16
.globl donna_list_is_empty
donna_list_is_empty:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_list_is_empty */

.text
.balign 16
.globl donna_list_append
donna_list_append:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb15
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rax, %rdx
	callq donna_list_append
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
Lbb15:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_append */

.text
.balign 16
.globl donna_list_reverse
donna_list_reverse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq donna_list_reverse_helper
	subq $-32, %rsp
	leave
	ret
/* end function donna_list_reverse */

.text
.balign 16
donna_list_reverse_helper:
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
	jz Lbb20
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
	callq donna_list_reverse_helper
	subq $-32, %rsp
	jmp Lbb21
Lbb20:
	movq %rdi, %rax
Lbb21:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_list_reverse_helper */

.text
.balign 16
.globl donna_list_sum
donna_list_sum:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb24
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq donna_list_sum
	subq $-32, %rsp
	addq %rsi, %rax
	jmp Lbb25
Lbb24:
	movl $0, %eax
Lbb25:
	popq %rsi
	leave
	ret
/* end function donna_list_sum */

.text
.balign 16
.globl donna_list_nth
donna_list_nth:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	movq (%rcx), %rsi
	cmpq $0, %rsi
	jz Lbb31
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rcx
	cmpq $0, %rdx
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %r8
	jz Lbb29
	subq $1, %rdx
	subq $32, %rsp
	movq %rax, %r8
	callq donna_list_nth
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb31
Lbb29:
	movq %rdi, %rax
	movq %rax, (%rsi)
Lbb31:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_nth */

.text
.balign 16
.globl donna_list_flatten
donna_list_flatten:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb34
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq donna_list_flatten
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb35
Lbb34:
	leaq donna_nil(%rip), %rax
Lbb35:
	popq %rsi
	leave
	ret
/* end function donna_list_flatten */

.text
.balign 16
.globl donna_list_take
donna_list_take:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	cmpq $0, %rdx
	setle %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb40
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb39
	movq 8(%rcx), %rbx
	movq 16(%rcx), %rcx
	subq $1, %rdx
	subq $32, %rsp
	callq donna_list_take
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb41
Lbb39:
	leaq donna_nil(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_nil(%rip), %rax
	jmp Lbb41
Lbb40:
	leaq donna_nil(%rip), %rax
Lbb41:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_list_take */

.text
.balign 16
.globl donna_list_drop
donna_list_drop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rax
	cmpq $0, %rdx
	setle %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz Lbb46
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb45
	movq 16(%rax), %rcx
	subq $1, %rdx
	subq $32, %rsp
	callq donna_list_drop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb46
Lbb45:
	leaq donna_nil(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_nil(%rip), %rax
Lbb46:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function donna_list_drop */

.text
.balign 16
.globl donna_list_repeat
donna_list_repeat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	cmpq $0, %rdx
	setle %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb49
	subq $1, %rdx
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_list_repeat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb50
Lbb49:
	leaq donna_nil(%rip), %rax
Lbb50:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_repeat */

.text
.balign 16
.globl donna_list_range
donna_list_range:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	cmpq %rdx, %rcx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb53
	movq %rcx, %rsi
	addq $1, %rcx
	subq $32, %rsp
	callq donna_list_range
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb54
Lbb53:
	leaq donna_nil(%rip), %rax
Lbb54:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_range */

.text
.balign 16
.globl donna_list_contains_int
donna_list_contains_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb60
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	cmpq %rax, %rdx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb58
	subq $32, %rsp
	callq donna_list_contains_int
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb61
Lbb58:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb61
Lbb60:
	movl $0, %eax
Lbb61:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function donna_list_contains_int */

.text
.balign 16
.globl donna_list_contains_str
donna_list_contains_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb67
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %rdi
	callq donna_string_equal
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb65
	subq $32, %rsp
	callq donna_list_contains_str
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb68
Lbb65:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb68
Lbb67:
	movl $0, %eax
Lbb68:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_contains_str */

.text
.balign 16
.globl donna_list_zip_length
donna_list_zip_length:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_list_length
	subq $-32, %rsp
	leave
	ret
/* end function donna_list_zip_length */

.text
.balign 16
.globl donna_list_minimum
donna_list_minimum:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb80
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb78
	subq $32, %rsp
	movq %rax, %rdx
	callq donna_list_minimum
	xchgq %rax, %rdi
	subq $-32, %rsp
	cmpq %rdi, %rax
	setl %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb76
	movq %rdi, %rax
	movq %rax, (%rcx)
	jmp Lbb77
Lbb76:
	movq %rax, (%rcx)
Lbb77:
	movq %rax, (%rsi)
	jmp Lbb80
Lbb78:
	movq %rdi, %rax
	movq %rax, (%rsi)
Lbb80:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_minimum */

.text
.balign 16
.globl donna_list_maximum
donna_list_maximum:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb90
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb88
	subq $32, %rsp
	movq %rax, %rdx
	callq donna_list_maximum
	xchgq %rax, %rdi
	subq $-32, %rsp
	cmpq %rdi, %rax
	setg %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb86
	movq %rdi, %rax
	movq %rax, (%rcx)
	jmp Lbb87
Lbb86:
	movq %rax, (%rcx)
Lbb87:
	movq %rax, (%rsi)
	jmp Lbb90
Lbb88:
	movq %rdi, %rax
	movq %rax, (%rsi)
Lbb90:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_maximum */

.text
.balign 16
.globl donna_list_is_sorted
donna_list_is_sorted:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb102
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb95
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb96
Lbb95:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb96:
	cmpl $0, %eax
	jnz Lbb101
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rcx), %rbx
	movq 16(%rcx), %rdi
	cmpq %rbx, %rax
	setle %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb100
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb103
Lbb100:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rbx, 8(%rcx)
	movq %rdi, 16(%rcx)
	subq $32, %rsp
	callq donna_list_is_sorted
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb103
Lbb101:
	movl $1, %eax
	jmp Lbb103
Lbb102:
	movl $1, %eax
Lbb103:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_list_is_sorted */

.text
.balign 16
.globl donna_list_map
donna_list_map:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb106
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	callq donna_list_map
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq *%rdx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb107
Lbb106:
	leaq donna_nil(%rip), %rax
Lbb107:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_map */

.text
.balign 16
.globl donna_list_filter
donna_list_filter:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb112
	movq 8(%rcx), %rbx
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq *%rdi
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb111
	subq $32, %rsp
	callq donna_list_filter
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb113
Lbb111:
	subq $32, %rsp
	callq donna_list_filter
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb113
Lbb112:
	leaq donna_nil(%rip), %rax
Lbb113:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_list_filter */

.text
.balign 16
.globl donna_list_fold
donna_list_fold:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %r8, %rdi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb116
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq *%rdi
	movq %rdi, %r8
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_fold
	subq $-32, %rsp
Lbb116:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_fold */

.text
.balign 16
.globl donna_list_fold_right
donna_list_fold_right:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb119
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %r8, %rdi
	movq %rax, %rdx
	callq donna_list_fold_right
	movq %rdi, %r8
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq *%r8
	subq $-32, %rsp
Lbb119:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_fold_right */

.text
.balign 16
.globl donna_list_any
donna_list_any:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb125
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq *%rdi
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb123
	subq $32, %rsp
	callq donna_list_any
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb126
Lbb123:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb126
Lbb125:
	movl $0, %eax
Lbb126:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_any */

.text
.balign 16
.globl donna_list_all
donna_list_all:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb132
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq *%rdi
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb131
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb133
Lbb131:
	subq $32, %rsp
	callq donna_list_all
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb133
Lbb132:
	movl $1, %eax
Lbb133:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_all */

.text
.balign 16
.globl donna_list_find
donna_list_find:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	movq %rdx, %r12
	movq %rax, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb139
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rsi, %rcx
	callq *%r12
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %r8
	jz Lbb138
	movq %rdi, %rax
	subq $32, %rsp
	movq %rax, %r8
	callq donna_list_find
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb140
Lbb138:
	movq %rax, (%rsi)
	jmp Lbb140
Lbb139:
	movq %rdi, %rax
Lbb140:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_find */

.text
.balign 16
.globl donna_list_flat_map
donna_list_flat_map:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb145
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq *%rdi
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdi
	cmpq $0, %rdi
	jz Lbb144
	movq 8(%rax), %rbx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq donna_list_flat_map
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_flat_map_join
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb146
Lbb144:
	subq $32, %rsp
	callq donna_list_flat_map
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb146
Lbb145:
	leaq donna_nil(%rip), %rax
Lbb146:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function donna_list_flat_map */

.text
.balign 16
donna_list_flat_map_join:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb149
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rax, %rdx
	callq donna_list_flat_map_join
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
Lbb149:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_flat_map_join */

.text
.balign 16
.globl donna_list_count
donna_list_count:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb154
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq *%rdi
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb153
	subq $32, %rsp
	callq donna_list_count
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb155
Lbb153:
	subq $32, %rsp
	callq donna_list_count
	subq $-32, %rsp
	addq $1, %rax
	movq %rax, (%rsi)
	jmp Lbb155
Lbb154:
	movl $0, %eax
Lbb155:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_count */

.text
.balign 16
.globl donna_list_zip_with
donna_list_zip_with:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb160
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %rax
	cmpq $0, %rax
	jz Lbb159
	movq 8(%rdx), %rbx
	movq 16(%rdx), %rdx
	subq $32, %rsp
	movq %r8, %r12
	callq donna_list_zip_with
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq *%r8
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb161
Lbb159:
	leaq donna_nil(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_nil(%rip), %rax
	jmp Lbb161
Lbb160:
	leaq donna_nil(%rip), %rax
Lbb161:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_zip_with */

.text
.balign 16
.globl donna_list_each
donna_list_each:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb164
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq *%rdi
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_each
	subq $-32, %rsp
Lbb164:
	movl $0, %eax
	popq %rdi
	popq %rsi
	leave
	ret
/* end function donna_list_each */

