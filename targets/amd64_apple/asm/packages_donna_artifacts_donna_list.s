.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl _donna_list_length
_donna_list_length:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb2
	movq 16(%rdi), %rdi
	callq _donna_list_length
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
.globl _donna_list_head
_donna_list_head:
	endbr64
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb6
	movq 8(%rdi), %rax
Lbb6:
	ret
/* end function donna_list_head */

.text
.balign 16
.globl _donna_list_tail
_donna_list_tail:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb9
	movq 16(%rdi), %rax
	jmp Lbb10
Lbb9:
	leaq _donna_nil(%rip), %rax
Lbb10:
	ret
/* end function donna_list_tail */

.text
.balign 16
.globl _donna_list_is_empty
_donna_list_is_empty:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	movl $0, %ecx
	movl $1, %eax
	cmovnz %rcx, %rax
	ret
/* end function donna_list_is_empty */

.text
.balign 16
.globl _donna_list_append
_donna_list_append:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb15
	movq 8(%rdi), %r12
	movq 16(%rdi), %rdi
	movq %rax, %rsi
	callq _donna_list_append
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
Lbb15:
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_append */

.text
.balign 16
.globl _donna_list_reverse
_donna_list_reverse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rsi
	callq _donna_list_reverse_helper
	leave
	ret
/* end function donna_list_reverse */

.text
.balign 16
_donna_list_reverse_helper:
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
	jz Lbb20
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
	callq _donna_list_reverse_helper
	jmp Lbb21
Lbb20:
	movq %r12, %rax
Lbb21:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_reverse_helper */

.text
.balign 16
.globl _donna_list_sum
_donna_list_sum:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb24
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	callq _donna_list_sum
	addq %rbx, %rax
	jmp Lbb25
Lbb24:
	movl $0, %eax
Lbb25:
	popq %rbx
	leave
	ret
/* end function donna_list_sum */

.text
.balign 16
.globl _donna_list_nth
_donna_list_nth:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdx, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb31
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	cmpq $0, %rsi
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rdx
	jz Lbb29
	subq $1, %rsi
	movq %rax, %rdx
	callq _donna_list_nth
	movq %rax, (%rbx)
	jmp Lbb31
Lbb29:
	movq %rcx, %rax
	movq %rax, (%rbx)
Lbb31:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function donna_list_nth */

.text
.balign 16
.globl _donna_list_flatten
_donna_list_flatten:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb34
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	callq _donna_list_flatten
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb35
Lbb34:
	leaq _donna_nil(%rip), %rax
Lbb35:
	popq %rbx
	leave
	ret
/* end function donna_list_flatten */

.text
.balign 16
.globl _donna_list_take
_donna_list_take:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	cmpq $0, %rsi
	setle %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb40
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb39
	movq 8(%rdi), %r13
	movq 16(%rdi), %rdi
	subq $1, %rsi
	callq _donna_list_take
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb41
Lbb39:
	leaq _donna_nil(%rip), %rax
	movq %rax, (%rbx)
	leaq _donna_nil(%rip), %rax
	jmp Lbb41
Lbb40:
	leaq _donna_nil(%rip), %rax
Lbb41:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_take */

.text
.balign 16
.globl _donna_list_drop
_donna_list_drop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rax
	cmpq $0, %rsi
	setle %cl
	movzbq %cl, %rcx
	cmpq $1, %rcx
	jz Lbb46
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb45
	movq 16(%rax), %rdi
	subq $1, %rsi
	callq _donna_list_drop
	movq %rax, (%rbx)
	jmp Lbb46
Lbb45:
	leaq _donna_nil(%rip), %rax
	movq %rax, (%rbx)
	leaq _donna_nil(%rip), %rax
Lbb46:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function donna_list_drop */

.text
.balign 16
.globl _donna_list_repeat
_donna_list_repeat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	cmpq $0, %rsi
	setle %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb49
	subq $1, %rsi
	movq %rdi, %rbx
	callq _donna_list_repeat
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %r12, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb50
Lbb49:
	leaq _donna_nil(%rip), %rax
Lbb50:
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_repeat */

.text
.balign 16
.globl _donna_list_range
_donna_list_range:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	cmpq %rsi, %rdi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb53
	movq %rdi, %rbx
	addq $1, %rdi
	callq _donna_list_range
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %r12, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb54
Lbb53:
	leaq _donna_nil(%rip), %rax
Lbb54:
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_range */

.text
.balign 16
.globl _donna_list_contains_int
_donna_list_contains_int:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb60
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	cmpq %rax, %rsi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb58
	callq _donna_list_contains_int
	movq %rax, (%rbx)
	jmp Lbb61
Lbb58:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb61
Lbb60:
	movl $0, %eax
Lbb61:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function donna_list_contains_int */

.text
.balign 16
.globl _donna_list_contains_str
_donna_list_contains_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb67
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	movq %rsi, %r12
	callq _donna_string_equal
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb65
	callq _donna_list_contains_str
	movq %rax, (%rbx)
	jmp Lbb68
Lbb65:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb68
Lbb67:
	movl $0, %eax
Lbb68:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_contains_str */

.text
.balign 16
.globl _donna_list_zip_length
_donna_list_zip_length:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _donna_list_length
	leave
	ret
/* end function donna_list_zip_length */

.text
.balign 16
.globl _donna_list_minimum
_donna_list_minimum:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb80
	movq 8(%rdi), %r12
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb78
	movq %rax, %rsi
	callq _donna_list_minimum
	xchgq %rax, %r12
	cmpq %r12, %rax
	setl %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb76
	movq %r12, %rax
	movq %rax, (%rcx)
	jmp Lbb77
Lbb76:
	movq %rax, (%rcx)
Lbb77:
	movq %rax, (%rbx)
	jmp Lbb80
Lbb78:
	movq %r12, %rax
	movq %rax, (%rbx)
Lbb80:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_minimum */

.text
.balign 16
.globl _donna_list_maximum
_donna_list_maximum:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb90
	movq 8(%rdi), %r12
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb88
	movq %rax, %rsi
	callq _donna_list_maximum
	xchgq %rax, %r12
	cmpq %r12, %rax
	setg %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb86
	movq %r12, %rax
	movq %rax, (%rcx)
	jmp Lbb87
Lbb86:
	movq %rax, (%rcx)
Lbb87:
	movq %rax, (%rbx)
	jmp Lbb90
Lbb88:
	movq %r12, %rax
	movq %rax, (%rbx)
Lbb90:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_maximum */

.text
.balign 16
.globl _donna_list_is_sorted
_donna_list_is_sorted:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb102
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
	jnz Lbb101
	movq 8(%rdi), %rax
	movq 16(%rdi), %rcx
	movq 8(%rcx), %r13
	movq 16(%rcx), %r12
	cmpq %r13, %rax
	setle %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb100
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb103
Lbb100:
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r13, 8(%rdi)
	movq %r12, 16(%rdi)
	callq _donna_list_is_sorted
	movq %rax, (%rbx)
	jmp Lbb103
Lbb101:
	movl $1, %eax
	jmp Lbb103
Lbb102:
	movl $1, %eax
Lbb103:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_is_sorted */

.text
.balign 16
.globl _donna_list_map
_donna_list_map:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb106
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rsi, %r12
	callq _donna_list_map
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq *%rsi
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb107
Lbb106:
	leaq _donna_nil(%rip), %rax
Lbb107:
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_map */

.text
.balign 16
.globl _donna_list_filter
_donna_list_filter:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb112
	movq 8(%rdi), %r13
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq *%r12
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb111
	callq _donna_list_filter
	movq %rax, (%rbx)
	jmp Lbb113
Lbb111:
	callq _donna_list_filter
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb113
Lbb112:
	leaq _donna_nil(%rip), %rax
Lbb113:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_filter */

.text
.balign 16
.globl _donna_list_fold
_donna_list_fold:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdx, %r12
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb116
	movq 8(%rdi), %rsi
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq %rax, %rdi
	callq *%r12
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_fold
Lbb116:
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_fold */

.text
.balign 16
.globl _donna_list_fold_right
_donna_list_fold_right:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb119
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdx, %r12
	movq %rax, %rsi
	callq _donna_list_fold_right
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rax, %rsi
	callq *%rdx
Lbb119:
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_fold_right */

.text
.balign 16
.globl _donna_list_any
_donna_list_any:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb125
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq *%r12
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb123
	callq _donna_list_any
	movq %rax, (%rbx)
	jmp Lbb126
Lbb123:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb126
Lbb125:
	movl $0, %eax
Lbb126:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_any */

.text
.balign 16
.globl _donna_list_all
_donna_list_all:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb132
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq *%r12
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb131
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb133
Lbb131:
	callq _donna_list_all
	movq %rax, (%rbx)
	jmp Lbb133
Lbb132:
	movl $1, %eax
Lbb133:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_all */

.text
.balign 16
.globl _donna_list_find
_donna_list_find:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %rax
	movq %rsi, %r14
	movq %rax, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb139
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq *%r14
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb138
	movq %r12, %rax
	movq %rax, %rdx
	callq _donna_list_find
	movq %rax, (%rbx)
	jmp Lbb140
Lbb138:
	movq %rax, (%rbx)
	jmp Lbb140
Lbb139:
	movq %r12, %rax
Lbb140:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_find */

.text
.balign 16
.globl _donna_list_flat_map
_donna_list_flat_map:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb145
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq *%r12
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb144
	movq 8(%rax), %r13
	movq 16(%rax), %r12
	callq _donna_list_flat_map
	movq %r12, %rdi
	movq %rax, %rsi
	callq _donna_list_flat_map_join
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb146
Lbb144:
	callq _donna_list_flat_map
	movq %rax, (%rbx)
	jmp Lbb146
Lbb145:
	leaq _donna_nil(%rip), %rax
Lbb146:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_flat_map */

.text
.balign 16
_donna_list_flat_map_join:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb149
	movq 8(%rdi), %r12
	movq 16(%rdi), %rdi
	movq %rax, %rsi
	callq _donna_list_flat_map_join
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
Lbb149:
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_flat_map_join */

.text
.balign 16
.globl _donna_list_count
_donna_list_count:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb154
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq *%r12
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb153
	callq _donna_list_count
	movq %rax, (%rbx)
	jmp Lbb155
Lbb153:
	callq _donna_list_count
	addq $1, %rax
	movq %rax, (%rbx)
	jmp Lbb155
Lbb154:
	movl $0, %eax
Lbb155:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_count */

.text
.balign 16
.globl _donna_list_zip_with
_donna_list_zip_with:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb160
	movq 8(%rdi), %r12
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rax
	cmpq $0, %rax
	jz Lbb159
	movq 8(%rsi), %r13
	movq 16(%rsi), %rsi
	movq %rdx, %r14
	callq _donna_list_zip_with
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	callq *%rdx
	movq %rax, %r13
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb161
Lbb159:
	leaq _donna_nil(%rip), %rax
	movq %rax, (%rbx)
	leaq _donna_nil(%rip), %rax
	jmp Lbb161
Lbb160:
	leaq _donna_nil(%rip), %rax
Lbb161:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_zip_with */

.text
.balign 16
.globl _donna_list_each
_donna_list_each:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb164
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq *%r12
	movq %r12, %rsi
	movq %rbx, %rdi
	callq _donna_list_each
Lbb164:
	movl $0, %eax
	popq %r12
	popq %rbx
	leave
	ret
/* end function donna_list_each */

