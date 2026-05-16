.data
.balign 8
str82:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str87:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str95:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str100:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str135:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str152:
	.ascii "src/"
	.byte 0
/* end data */

.text
.balign 16
.globl utilities_location_Position
utilities_location_Position:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $32, %ecx
	callq malloc
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function utilities_location_Position */

.text
.balign 16
.globl utilities_location_Span
utilities_location_Span:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $32, %ecx
	callq malloc
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function utilities_location_Span */

.text
.balign 16
.globl utilities_location_zero
utilities_location_zero:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $32, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $0, (%rsi)
	movq $1, 8(%rsi)
	movq $1, 16(%rsi)
	movq $0, 24(%rsi)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $32, %ecx
	callq malloc
	movq %rdi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rsi, 24(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function utilities_location_zero */

.text
.balign 16
.globl utilities_location_from_positions
utilities_location_from_positions:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $32, %ecx
	callq malloc
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function utilities_location_from_positions */

.text
.balign 16
.globl utilities_location_pos_line
utilities_location_pos_line:
	endbr64
	movq 8(%rcx), %rax
	ret
/* end function utilities_location_pos_line */

.text
.balign 16
.globl utilities_location_pos_col
utilities_location_pos_col:
	endbr64
	movq 16(%rcx), %rax
	ret
/* end function utilities_location_pos_col */

.text
.balign 16
.globl utilities_location_pos_offset
utilities_location_pos_offset:
	endbr64
	movq 24(%rcx), %rax
	ret
/* end function utilities_location_pos_offset */

.text
.balign 16
.globl utilities_location_span_file
utilities_location_span_file:
	endbr64
	movq 8(%rcx), %rax
	ret
/* end function utilities_location_span_file */

.text
.balign 16
.globl utilities_location_span_start
utilities_location_span_start:
	endbr64
	movq 16(%rcx), %rax
	ret
/* end function utilities_location_span_start */

.text
.balign 16
.globl utilities_location_span_end
utilities_location_span_end:
	endbr64
	movq 24(%rcx), %rax
	ret
/* end function utilities_location_span_end */

.text
.balign 16
.globl utilities_location_span_length
utilities_location_span_length:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq utilities_location_span_end
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_pos_col
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_span_start
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_pos_col
	subq $-32, %rsp
	negq %rax
	addq %rsi, %rax
	addq $1, %rax
	popq %rsi
	leave
	ret
/* end function utilities_location_span_length */

.text
.balign 16
.globl utilities_location_label
utilities_location_label:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq utilities_location_span_start
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_span_file
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str82(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq utilities_location_pos_line
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str87(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_pos_col
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function utilities_location_label */

.text
.balign 16
.globl utilities_location_short_label
utilities_location_short_label:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq utilities_location_span_start
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_span_file
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_strip_src_prefix
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str95(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq utilities_location_pos_line
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str100(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_pos_col
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function utilities_location_short_label */

.text
.balign 16
.globl utilities_location_merge
utilities_location_merge:
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
	callq utilities_location_span_file
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_span_start
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_span_end
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rsi, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function utilities_location_merge */

.text
.balign 16
.globl utilities_location_position_at
utilities_location_position_at:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	movq %rsp, %rax
	movq %rdx, 32(%rax)
	movl $1, %r9d
	movl $1, %r8d
	movl $0, %edx
	callq utilities_location_scan_pos
	subq $-48, %rsp
	leave
	ret
/* end function utilities_location_position_at */

.text
.balign 16
utilities_location_scan_pos:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq 48(%rbp), %rsi
	movq %r9, %rdi
	movq %r8, %r12
	movq %rdx, %r14
	cmpq %rsi, %r14
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb38
	subq $32, %rsp
	movq %rcx, %rbx
	callq donna_string_length
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq %rax, %r14
	setge %al
	movzbq %al, %rax
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb36
	subq $32, %rsp
	movq %r14, %rdx
	movq %rcx, %r13
	callq donna_string_char_at
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str135(%rip), %rdx
	callq strcmp
	movq %r13, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rdi, %r13
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %r14, %rdx
	addq $1, %rdx
	cmpl $0, %eax
	jnz Lbb34
	movq %r13, %r9
	addq $1, %r9
	subq $48, %rsp
	movq %rsp, %rax
	movq %rbx, 32(%rax)
	movq %r12, %r8
	callq utilities_location_scan_pos
	subq $-48, %rsp
	movq %rax, (%rdi)
	jmp Lbb35
Lbb34:
	movq %r12, %r8
	addq $1, %r8
	subq $48, %rsp
	movq %rsp, %rax
	movq %rbx, 32(%rax)
	movl $1, %r9d
	callq utilities_location_scan_pos
	subq $-48, %rsp
	movq %rax, (%rdi)
Lbb35:
	movq %rax, (%rsi)
	jmp Lbb40
Lbb36:
	xchgq %rbx, %rdi
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rdi, 24(%rax)
	movq %rax, (%rsi)
	jmp Lbb40
Lbb38:
	movq %r12, %rbx
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rsi, 24(%rax)
Lbb40:
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
/* end function utilities_location_scan_pos */

.text
.balign 16
utilities_location_strip_src_prefix:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str152(%rip), %rdx
	movq %rsi, %rcx
	callq donna_string_index_of
	xchgq %rax, %rsi
	subq $-32, %rsp
	cmpq $-1, %rsi
	movq %rax, %rdi
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb45
	movq %rsi, %rbx
	addq $4, %rbx
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_string_length
	movq %rbx, %rdx
	subq $-32, %rsp
	movq %rax, %r8
	subq %rdx, %r8
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_string_slice
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str152(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_index_of
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $-1, %rax
	jz Lbb44
	subq $32, %rsp
	callq utilities_location_strip_src_prefix
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb46
Lbb44:
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_string_length
	movq %rbx, %rdx
	movq %rax, %rcx
	movq %rdi, %rax
	subq $-32, %rsp
	movq %rcx, %r8
	subq %rdx, %r8
	subq $32, %rsp
	movq %rax, %rcx
	callq donna_string_slice
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb46
Lbb45:
	movq %rdi, %rax
Lbb46:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function utilities_location_strip_src_prefix */

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

