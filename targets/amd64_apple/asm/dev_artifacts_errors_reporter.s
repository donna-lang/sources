.data
.balign 8
_str8:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str10:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str23:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
_str25:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str35:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str39:
	.ascii " "
	.byte 226
	.byte 148
	.byte 130
	.byte 0
/* end data */

.data
.balign 8
_str42:
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
_str49:
	.ascii "^"
	.byte 0
/* end data */

.data
.balign 8
_str51:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str54:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str60:
	.ascii " "
	.byte 226
	.byte 148
	.byte 130
	.byte 0
/* end data */

.data
.balign 8
_str63:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
_str66:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str76:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str77:
	.ascii "hint:"
	.byte 0
/* end data */

.data
.balign 8
_str80:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str90:
	.ascii " "
	.byte 226
	.byte 148
	.byte 130
	.byte 0
/* end data */

.data
.balign 8
_str102:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str105:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str114:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl _errors_reporter_render_error
_errors_reporter_render_error:
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
	callq _errors_error_error_span
	movq %rbx, %rdi
	movq %rax, %r13
	callq _errors_messages_error_message
	movq (%rax), %r15
	movq 8(%rax), %rbx
	movq 16(%rax), %r12
	leaq _str8(%rip), %rdi
	callq _utilities_colors_error_header
	movq %r15, %rsi
	movq %rax, %rdi
	movq %rdi, %r15
	leaq _str10(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_bold
	movq %r15, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %r14, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	leaq _utilities_colors_error_header(%rip), %r9
	callq _errors_reporter_render
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function errors_reporter_render_error */

.text
.balign 16
.globl _errors_reporter_render_warning
_errors_reporter_render_warning:
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
	callq _errors_error_warning_span
	movq %rbx, %rdi
	movq %rax, %r13
	callq _errors_messages_warning_message
	movq (%rax), %r15
	movq 8(%rax), %rbx
	movq 16(%rax), %r12
	leaq _str23(%rip), %rdi
	callq _utilities_colors_warning_header
	movq %r15, %rsi
	movq %rax, %rdi
	movq %rdi, %r15
	leaq _str25(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_bold
	movq %r15, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %r14, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	leaq _utilities_colors_yellow(%rip), %r9
	callq _errors_reporter_render
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function errors_reporter_render_warning */

.text
.balign 16
_errors_reporter_render:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $120, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r9, -64(%rbp)
	movq %r8, -32(%rbp)
	movq %rdx, %r14
	movq %rsi, -16(%rbp)
	movq %rdi, %r12
	movq %rcx, %rdi
	movq %rdi, %rbx
	callq _utilities_location_span_start
	movq %rax, %rdi
	callq _utilities_location_pos_line
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	callq _utilities_location_span_start
	movq %rax, %rdi
	callq _utilities_location_pos_col
	movq %rbx, %rdi
	movq %rax, -48(%rbp)
	movq %rdi, %rbx
	callq _utilities_location_span_length
	movq %rbx, %rdi
	movq %rax, -40(%rbp)
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_int_to_string
	movq %rax, %rdi
	callq _donna_string_length
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq _str35(%rip), %rdi
	callq _donna_string_repeat
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq _str39(%rip), %rsi
	movq %rdi, %r15
	movq %rbx, %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_light_blue
	movq %r15, %rdi
	movq %rax, -72(%rbp)
	leaq _str42(%rip), %rsi
	movq %rdi, %r15
	movq %rbx, %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_light_blue
	movq %r15, %rdi
	movq %rax, -24(%rbp)
	movq -16(%rbp), %r15
	callq _utilities_location_short_label
	movq %rax, %rdi
	callq _utilities_colors_light_blue
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	movq -24(%rbp), %rdi
	callq ___rt_str_concat
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, -88(%rbp)
	movq %rdi, %r13
	movq -32(%rbp), %rdi
	movq %rsi, %r15
	movq %r13, %rsi
	callq _errors_reporter_get_line
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, -96(%rbp)
	movq %rsi, %r15
	movq -40(%rbp), %rsi
	movq %rdi, %r13
	leaq _str49(%rip), %rdi
	callq _donna_string_repeat
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, -56(%rbp)
	movq -48(%rbp), %rax
	movq %rsi, %r15
	movq %rax, %rsi
	subq $1, %rsi
	movq %rdi, %r13
	leaq _str51(%rip), %rdi
	callq _donna_string_repeat
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, -80(%rbp)
	movq %rdi, %r15
	movq -56(%rbp), %rdi
	movq %rsi, %r13
	leaq _str54(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq -64(%rbp), %r13
	callq ___rt_str_concat
	movq %r13, %r9
	movq %rax, %rdi
	movq -72(%rbp), %r13
	callq *%r9
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -80(%rbp), %rdi
	callq ___rt_str_concat
	movq %r15, %rdi
	movq %rax, -104(%rbp)
	movq -88(%rbp), %r15
	callq _donna_int_to_string
	movq %rax, %rdi
	leaq _str60(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_light_blue
	movq %rax, %rdi
	leaq _str63(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	movq -96(%rbp), %rsi
	callq ___rt_str_concat
	movq %r13, %rdi
	movq %rax, -112(%rbp)
	movq -104(%rbp), %rsi
	movq %rsi, %r13
	leaq _str66(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	movq %r14, %rdi
	callq _donna_string_is_empty
	movq %r13, %rdi
	cmpq $1, %rax
	jz Lbb7
	movq %rdi, %r13
	leaq _str77(%rip), %rdi
	callq _utilities_colors_orange
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	leaq _str76(%rip), %rdi
	callq ___rt_str_concat
	movq %r14, %rsi
	movq %rax, %rdi
	movq %rsi, %r14
	leaq _str80(%rip), %rsi
	callq ___rt_str_concat
	movq %r14, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rsi, %r14
	jmp Lbb9
Lbb7:
	leaq _str75(%rip), %rax
	movq %rax, %r14
Lbb9:
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq $1, (%r13)
	movq %rbx, 8(%r13)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %r14, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	movq -112(%rbp), %rax
	movq $1, (%rbx)
	movq %rax, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %rsi, %r13
	leaq _str90(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_light_blue
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	xchgq %rax, %r14
	movq $1, (%r14)
	movq %rax, 8(%r14)
	movq %rbx, 16(%r14)
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %r15, 8(%rbx)
	movq %r14, 16(%rbx)
	movl $24, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	movq %rsi, %rbx
	leaq _str102(%rip), %rsi
	callq _donna_string_join
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
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
_errors_reporter_get_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	leaq _str105(%rip), %rsi
	callq _donna_string_split
	movq %rbx, %rsi
	movq %rax, %rdi
	movl $1, %edx
	callq _errors_reporter_nth_line
	popq %rbx
	leave
	ret
/* end function errors_reporter_get_line */

.text
.balign 16
_errors_reporter_nth_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb17
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	cmpq %rdx, %rsi
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb16
	addq $1, %rdx
	callq _errors_reporter_nth_line
	movq %rax, (%rbx)
	jmp Lbb18
Lbb16:
	movq %rax, (%rbx)
	jmp Lbb18
Lbb17:
	leaq _str114(%rip), %rax
Lbb18:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function errors_reporter_nth_line */

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

