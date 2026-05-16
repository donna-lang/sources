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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_location_Position, @function
.size utilities_location_Position, .-utilities_location_Position
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_location_Span, @function
.size utilities_location_Span, .-utilities_location_Span
/* end function utilities_location_Span */

.text
.balign 16
.globl utilities_location_zero
utilities_location_zero:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $0, (%rbx)
	movq $1, 8(%rbx)
	movq $1, 16(%rbx)
	movq $0, 24(%rbx)
	movq %rdi, %r12
	movl $32, %edi
	callq malloc
	movq %r12, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rbx, 24(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_location_zero, @function
.size utilities_location_zero, .-utilities_location_zero
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_location_from_positions, @function
.size utilities_location_from_positions, .-utilities_location_from_positions
/* end function utilities_location_from_positions */

.text
.balign 16
.globl utilities_location_pos_line
utilities_location_pos_line:
	endbr64
	movq 8(%rdi), %rax
	ret
.type utilities_location_pos_line, @function
.size utilities_location_pos_line, .-utilities_location_pos_line
/* end function utilities_location_pos_line */

.text
.balign 16
.globl utilities_location_pos_col
utilities_location_pos_col:
	endbr64
	movq 16(%rdi), %rax
	ret
.type utilities_location_pos_col, @function
.size utilities_location_pos_col, .-utilities_location_pos_col
/* end function utilities_location_pos_col */

.text
.balign 16
.globl utilities_location_pos_offset
utilities_location_pos_offset:
	endbr64
	movq 24(%rdi), %rax
	ret
.type utilities_location_pos_offset, @function
.size utilities_location_pos_offset, .-utilities_location_pos_offset
/* end function utilities_location_pos_offset */

.text
.balign 16
.globl utilities_location_span_file
utilities_location_span_file:
	endbr64
	movq 8(%rdi), %rax
	ret
.type utilities_location_span_file, @function
.size utilities_location_span_file, .-utilities_location_span_file
/* end function utilities_location_span_file */

.text
.balign 16
.globl utilities_location_span_start
utilities_location_span_start:
	endbr64
	movq 16(%rdi), %rax
	ret
.type utilities_location_span_start, @function
.size utilities_location_span_start, .-utilities_location_span_start
/* end function utilities_location_span_start */

.text
.balign 16
.globl utilities_location_span_end
utilities_location_span_end:
	endbr64
	movq 24(%rdi), %rax
	ret
.type utilities_location_span_end, @function
.size utilities_location_span_end, .-utilities_location_span_end
/* end function utilities_location_span_end */

.text
.balign 16
.globl utilities_location_span_length
utilities_location_span_length:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq utilities_location_span_end
	movq %rax, %rdi
	callq utilities_location_pos_col
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_location_span_start
	movq %rax, %rdi
	callq utilities_location_pos_col
	negq %rax
	addq %rbx, %rax
	addq $1, %rax
	popq %rbx
	leave
	ret
.type utilities_location_span_length, @function
.size utilities_location_span_length, .-utilities_location_span_length
/* end function utilities_location_span_length */

.text
.balign 16
.globl utilities_location_label
utilities_location_label:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	callq utilities_location_span_start
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_location_span_file
	movq %rax, %rdi
	leaq str82(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq utilities_location_pos_line
	movq %rax, %rdi
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str87(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_location_pos_col
	movq %rax, %rdi
	callq donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_location_label, @function
.size utilities_location_label, .-utilities_location_label
/* end function utilities_location_label */

.text
.balign 16
.globl utilities_location_short_label
utilities_location_short_label:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	callq utilities_location_span_start
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_location_span_file
	movq %rax, %rdi
	callq utilities_location_strip_src_prefix
	movq %rax, %rdi
	leaq str95(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq utilities_location_pos_line
	movq %rax, %rdi
	callq donna_int_to_string
	movq %r12, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	leaq str100(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq utilities_location_pos_col
	movq %rax, %rdi
	callq donna_int_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_location_short_label, @function
.size utilities_location_short_label, .-utilities_location_short_label
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
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	movq %rdi, %r12
	callq utilities_location_span_file
	movq %r12, %rdi
	movq %rax, %r13
	callq utilities_location_span_start
	movq %rbx, %rdi
	movq %rax, %r12
	callq utilities_location_span_end
	movq %rax, %rbx
	movl $32, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rbx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_location_merge, @function
.size utilities_location_merge, .-utilities_location_merge
/* end function utilities_location_merge */

.text
.balign 16
.globl utilities_location_position_at
utilities_location_position_at:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rsi, %r8
	movl $1, %ecx
	movl $1, %edx
	movl $0, %esi
	callq utilities_location_scan_pos
	leave
	ret
.type utilities_location_position_at, @function
.size utilities_location_position_at, .-utilities_location_position_at
/* end function utilities_location_position_at */

.text
.balign 16
utilities_location_scan_pos:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r8, %r15
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	cmpq %r15, %r12
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb38
	movq %rdi, %rbx
	callq donna_string_length
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq %rax, %rsi
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -16(%rbp)
	cmpq $1, %rax
	jz .Lbb36
	movq %rsi, %r12
	movq %rdi, %rbx
	callq donna_string_char_at
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq str135(%rip), %rsi
	callq strcmp
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq -16(%rbp), %rbx
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	addq $1, %rsi
	cmpl $0, %eax
	jnz .Lbb34
	addq $1, %rcx
	callq utilities_location_scan_pos
	movq %rax, (%r12)
	jmp .Lbb35
.Lbb34:
	movq %rdx, %r14
	addq $1, %rdx
	movq %r8, %r13
	movl $1, %ecx
	callq utilities_location_scan_pos
	movq %rax, (%r12)
.Lbb35:
	movq %rax, (%rbx)
	jmp .Lbb40
.Lbb36:
	movq %r14, %r12
	movq %r13, %r14
	movq %r15, %r13
	movl $32, %edi
	callq malloc
	movq %r14, %rdx
	movq $0, (%rax)
	movq %rdx, 8(%rax)
	movq %r12, 16(%rax)
	movq %r13, 24(%rax)
	movq %rax, (%rbx)
	jmp .Lbb40
.Lbb38:
	movq %r14, %r12
	movq %r13, %rbx
	movq %r15, %r13
	movl $32, %edi
	callq malloc
	movq %r13, %r8
	movq %r12, %rcx
	movq %rbx, %rdx
	movq $0, (%rax)
	movq %rdx, 8(%rax)
	movq %rcx, 16(%rax)
	movq %r8, 24(%rax)
.Lbb40:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_location_scan_pos, @function
.size utilities_location_scan_pos, .-utilities_location_scan_pos
/* end function utilities_location_scan_pos */

.text
.balign 16
utilities_location_strip_src_prefix:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rbx
	leaq str152(%rip), %rsi
	movq %rbx, %rdi
	callq donna_string_index_of
	xchgq %rax, %rbx
	cmpq $-1, %rbx
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb45
	movq %rbx, %r13
	addq $4, %r13
	movq %r12, %rdi
	callq donna_string_length
	movq %r13, %rsi
	movq %rax, %rdx
	subq %rsi, %rdx
	movq %r12, %rdi
	callq donna_string_slice
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq str152(%rip), %rsi
	movq %rdi, %rbx
	callq donna_string_index_of
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $-1, %rax
	jz .Lbb44
	callq utilities_location_strip_src_prefix
	movq %rax, (%rbx)
	jmp .Lbb46
.Lbb44:
	movq %r12, %rdi
	callq donna_string_length
	movq %r13, %rsi
	movq %rax, %rcx
	movq %r12, %rax
	movq %rcx, %rdx
	subq %rsi, %rdx
	movq %rax, %rdi
	callq donna_string_slice
	movq %rax, (%rbx)
	jmp .Lbb46
.Lbb45:
	movq %r12, %rax
.Lbb46:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type utilities_location_strip_src_prefix, @function
.size utilities_location_strip_src_prefix, .-utilities_location_strip_src_prefix
/* end function utilities_location_strip_src_prefix */

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

.section .note.GNU-stack,"",@progbits
