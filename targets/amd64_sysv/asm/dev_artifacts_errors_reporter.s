.data
.balign 8
str8:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str10:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str23:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
str25:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str35:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str39:
	.ascii " "
	.byte 226
	.byte 148
	.byte 130
	.byte 0
/* end data */

.data
.balign 8
str42:
	.ascii " "
	.byte 226
	.byte 148
	.byte 140
	.byte 226
	.byte 148
	.byte 128
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str48:
	.ascii "^"
	.byte 0
/* end data */

.data
.balign 8
str50:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str53:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str59:
	.ascii " "
	.byte 226
	.byte 148
	.byte 130
	.byte 0
/* end data */

.data
.balign 8
str62:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str65:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str74:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str75:
	.byte 10
	.byte 10
	.ascii "hint: "
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str84:
	.ascii " "
	.byte 226
	.byte 148
	.byte 130
	.byte 0
/* end data */

.data
.balign 8
str96:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str99:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str108:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl errors_reporter_render_error
errors_reporter_render_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq %rdi, %rbx
	callq errors_error_error_span
	movq %rbx, %rdi
	movq %rax, %r13
	callq errors_messages_error_message
	movq (%rax), %r15
	movq 8(%rax), %rbx
	movq 16(%rax), %r12
	leaq str8(%rip), %rdi
	callq utilities_colors_error_header
	movq %r15, %rsi
	movq %rax, %rdi
	movq %rdi, %r15
	leaq str10(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_bold
	movq %r15, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %r14, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	leaq utilities_colors_error_header(%rip), %r9
	callq errors_reporter_render
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type errors_reporter_render_error, @function
.size errors_reporter_render_error, .-errors_reporter_render_error
/* end function errors_reporter_render_error */

.text
.balign 16
.globl errors_reporter_render_warning
errors_reporter_render_warning:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq %rdi, %rbx
	callq errors_error_warning_span
	movq %rbx, %rdi
	movq %rax, %r13
	callq errors_messages_warning_message
	movq (%rax), %r15
	movq 8(%rax), %rbx
	movq 16(%rax), %r12
	leaq str23(%rip), %rdi
	callq utilities_colors_warning_header
	movq %r15, %rsi
	movq %rax, %rdi
	movq %rdi, %r15
	leaq str25(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_bold
	movq %r15, %rdi
	movq %rax, %rsi
	callq __rt_str_concat
	movq %r14, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	leaq utilities_colors_yellow(%rip), %r9
	callq errors_reporter_render
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type errors_reporter_render_warning, @function
.size errors_reporter_render_warning, .-errors_reporter_render_warning
/* end function errors_reporter_render_warning */

.text
.balign 16
errors_reporter_render:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $88, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r9, -56(%rbp)
	movq %r8, -16(%rbp)
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, -80(%rbp)
	movq %rcx, %rdi
	movq %rdi, %rbx
	callq utilities_location_span_start
	movq %rax, %rdi
	callq utilities_location_pos_line
	movq %rbx, %rdi
	movq %rax, %r14
	movq %rdi, %rbx
	callq utilities_location_span_start
	movq %rax, %rdi
	callq utilities_location_pos_col
	movq %rbx, %rdi
	movq %rax, -24(%rbp)
	movq %rdi, %rbx
	callq utilities_location_span_length
	movq %rbx, %rdi
	movq %rax, -32(%rbp)
	movq %rdi, %rbx
	movq %r14, %rdi
	callq donna_int_to_string
	movq %rax, %rdi
	callq donna_string_length
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq str35(%rip), %rdi
	callq donna_string_repeat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rsi, %r15
	leaq str39(%rip), %rsi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, -48(%rbp)
	movq %rsi, %r15
	leaq str42(%rip), %rsi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq utilities_location_short_label
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %r12, %rdi
	movq %rax, %rsi
	movq -16(%rbp), %r12
	callq __rt_str_concat
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, -40(%rbp)
	movq -24(%rbp), %r12
	movq %rsi, %r15
	movq %r14, %rsi
	callq errors_reporter_get_line
	movq %r15, %rsi
	movq %rax, -72(%rbp)
	movq %rsi, %r15
	movq -32(%rbp), %rsi
	leaq str48(%rip), %rdi
	callq donna_string_repeat
	movq %r15, %rsi
	movq %rax, %rdi
	movq %rsi, %r15
	movq %r12, %rsi
	subq $1, %rsi
	movq %rdi, %r12
	leaq str50(%rip), %rdi
	callq donna_string_repeat
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, -64(%rbp)
	movq -40(%rbp), %r15
	movq %rsi, %r12
	leaq str53(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq -48(%rbp), %r12
	callq __rt_str_concat
	movq %rax, %rdi
	movq -56(%rbp), %r9
	callq *%r9
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rdi, %r14
	movq -64(%rbp), %rdi
	callq __rt_str_concat
	movq %r14, %rdi
	movq %rax, %r14
	callq donna_int_to_string
	movq %r14, %rsi
	movq %rax, %rdi
	movq %rsi, %r14
	leaq str59(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %r14, %rsi
	movq %rax, %rdi
	movq %rsi, %r14
	leaq str62(%rip), %rsi
	callq __rt_str_concat
	movq %r14, %rsi
	movq %rax, %rdi
	movq %rsi, %r14
	movq -72(%rbp), %rsi
	callq __rt_str_concat
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %r14
	movq %rsi, %r12
	leaq str65(%rip), %rsi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r12
	movq %r13, %rdi
	callq donna_string_is_empty
	movq %r13, %rsi
	movq %r12, %rdi
	cmpq $1, %rax
	jz .Lbb7
	movq %rdi, %r12
	leaq str75(%rip), %rdi
	callq __rt_str_concat
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rsi, %r12
	jmp .Lbb9
.Lbb7:
	leaq str74(%rip), %rax
	movq %rax, %r12
.Lbb9:
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq $1, (%r13)
	movq %rbx, 8(%r13)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	movq -80(%rbp), %r12
	movq $1, (%rbx)
	movq %r14, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %rsi, %r13
	leaq str84(%rip), %rsi
	callq __rt_str_concat
	movq %rax, %rdi
	callq utilities_colors_dim
	movq %rax, %r14
	movl $24, %edi
	callq malloc
	xchgq %rax, %r14
	movq $1, (%r14)
	movq %rax, 8(%r14)
	movq %rbx, 16(%r14)
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %r15, 8(%rbx)
	movq %r14, 16(%rbx)
	movl $24, %edi
	callq malloc
	movq %r13, %rsi
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	movq %rsi, %rbx
	leaq str96(%rip), %rsi
	callq donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type errors_reporter_render, @function
.size errors_reporter_render, .-errors_reporter_render
/* end function errors_reporter_render */

.text
.balign 16
errors_reporter_get_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	leaq str99(%rip), %rsi
	callq donna_string_split
	movq %rbx, %rsi
	movq %rax, %rdi
	movl $1, %edx
	callq errors_reporter_nth_line
	popq %rbx
	leave
	ret
.type errors_reporter_get_line, @function
.size errors_reporter_get_line, .-errors_reporter_get_line
/* end function errors_reporter_get_line */

.text
.balign 16
errors_reporter_nth_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb17
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	cmpq %rdx, %rsi
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz .Lbb16
	addq $1, %rdx
	callq errors_reporter_nth_line
	movq %rax, (%rbx)
	jmp .Lbb18
.Lbb16:
	movq %rax, (%rbx)
	jmp .Lbb18
.Lbb17:
	leaq str108(%rip), %rax
.Lbb18:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type errors_reporter_nth_line, @function
.size errors_reporter_nth_line, .-errors_reporter_nth_line
/* end function errors_reporter_nth_line */

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
