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
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	callq errors_error_error_span
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq errors_messages_error_message
	subq $-32, %rsp
	movq (%rax), %r13
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	subq $32, %rsp
	leaq str8(%rip), %rcx
	callq utilities_colors_error_header
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	leaq str10(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_bold
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %r12, %r9
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	leaq utilities_colors_error_header(%rip), %rdi
	movq %rdi, 40(%rax)
	movq %rsi, 32(%rax)
	callq errors_reporter_render
	subq $-48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	callq errors_error_warning_span
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq errors_messages_warning_message
	subq $-32, %rsp
	movq (%rax), %r13
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	subq $32, %rsp
	leaq str23(%rip), %rcx
	callq utilities_colors_warning_header
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	leaq str25(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_bold
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %r12, %r9
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	leaq utilities_colors_yellow(%rip), %rdi
	movq %rdi, 40(%rax)
	movq %rsi, 32(%rax)
	callq errors_reporter_render
	subq $-48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq 56(%rbp), %r15
	movq %r15, -16(%rbp)
	movq 48(%rbp), %r12
	movq %r8, %r14
	movq %rdx, %r13
	movq %rcx, %rdi
	movq %r9, %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	callq utilities_location_span_start
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_pos_line
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq utilities_location_span_start
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_pos_col
	movq %rsi, %rcx
	movq %rax, -32(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq utilities_location_span_length
	movq %rsi, %rcx
	movq %rax, -40(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq donna_int_to_string
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_length
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str35(%rip), %rcx
	callq donna_string_repeat
	movq %r13, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r15
	leaq str39(%rip), %rdx
	movq %rcx, %r13
	movq %rsi, %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %r15, %rdx
	movq %r13, %rcx
	movq %rax, -48(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq str42(%rip), %rdx
	movq %rcx, %r15
	movq %rsi, %rcx
	callq __rt_str_concat
	movq %r15, %rcx
	movq %rax, -24(%rbp)
	movq -16(%rbp), %r15
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_short_label
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rcx, %r12
	movq -24(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, -64(%rbp)
	movq -32(%rbp), %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %rbx, %rdx
	callq errors_reporter_get_line
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, -72(%rbp)
	movq %rdx, %r13
	movq -40(%rbp), %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str48(%rip), %rcx
	callq donna_string_repeat
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, -56(%rbp)
	movq -48(%rbp), %rbx
	subq $-32, %rsp
	movq %rdx, %r13
	movq %r12, %rdx
	subq $1, %rdx
	subq $32, %rsp
	movq %rcx, %r12
	leaq str50(%rip), %rcx
	callq donna_string_repeat
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, -80(%rbp)
	movq %rcx, %r12
	movq -56(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq str53(%rip), %rdx
	callq __rt_str_concat
	movq %r13, %rdx
	movq %rax, %rcx
	movq -64(%rbp), %r13
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	movq %r15, %rax
	movq -72(%rbp), %r15
	subq $-32, %rsp
	subq $32, %rsp
	callq *%rax
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rcx, %r12
	movq -80(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_int_to_string
	movq %r15, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r15
	leaq str59(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %r15, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r15
	leaq str62(%rip), %rdx
	callq __rt_str_concat
	movq %r15, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str65(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r14, %rcx
	callq donna_string_is_empty
	movq %r14, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb7
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str75(%rip), %rcx
	callq __rt_str_concat
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq %rdx, %r14
	jmp Lbb9
Lbb7:
	leaq str74(%rip), %rax
	movq %rax, %r14
Lbb9:
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %rsi, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str84(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %r14, 8(%r12)
	movq %rsi, 16(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rdi, 8(%rcx)
	movq %rsi, 16(%rcx)
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str96(%rip), %rdx
	callq donna_string_join
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function errors_reporter_render */

.text
.balign 16
errors_reporter_get_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str99(%rip), %rdx
	callq donna_string_split
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movl $1, %r8d
	callq errors_reporter_nth_line
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function errors_reporter_get_line */

.text
.balign 16
errors_reporter_nth_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb17
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	cmpq %r8, %rdx
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb16
	addq $1, %r8
	subq $32, %rsp
	callq errors_reporter_nth_line
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb18
Lbb16:
	movq %rax, (%rsi)
	jmp Lbb18
Lbb17:
	leaq str108(%rip), %rax
Lbb18:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function errors_reporter_nth_line */

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

