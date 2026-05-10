.data
.balign 8
str16:
	.byte 27
	.ascii "["
	.byte 0
/* end data */

.data
.balign 8
str29:
	.ascii "m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_reset
utilities_colors_reset:
	.byte 27
	.ascii "[0m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_style_bold
utilities_colors_style_bold:
	.byte 27
	.ascii "[1m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_style_dim
utilities_colors_style_dim:
	.byte 27
	.ascii "[2m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_style_italic
utilities_colors_style_italic:
	.byte 27
	.ascii "[3m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_color_orange
utilities_colors_color_orange:
	.byte 27
	.ascii "[38;5;208m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_color_red
utilities_colors_color_red:
	.byte 27
	.ascii "[31m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_color_green
utilities_colors_color_green:
	.byte 27
	.ascii "[32m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_color_yellow
utilities_colors_color_yellow:
	.byte 27
	.ascii "[33m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_color_cyan
utilities_colors_color_cyan:
	.byte 27
	.ascii "[36m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_color_magenta
utilities_colors_color_magenta:
	.byte 27
	.ascii "[35m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_bold_red
utilities_colors_bold_red:
	.byte 27
	.ascii "[1;31m"
	.byte 0
/* end data */

.data
.balign 8
.globl utilities_colors_bold_yellow
utilities_colors_bold_yellow:
	.byte 27
	.ascii "[1;33m"
	.byte 0
/* end data */

.text
.balign 16
.globl utilities_colors_paint
utilities_colors_paint:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq utilities_colors_reset(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_paint */

.text
.balign 16
.globl utilities_colors_error_header
utilities_colors_error_header:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq utilities_colors_bold_red(%rip), %rcx
	callq utilities_colors_paint
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_error_header */

.text
.balign 16
.globl utilities_colors_warning_header
utilities_colors_warning_header:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq utilities_colors_bold_yellow(%rip), %rcx
	callq utilities_colors_paint
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_warning_header */

.text
.balign 16
.globl utilities_colors_orange
utilities_colors_orange:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq utilities_colors_color_orange(%rip), %rcx
	callq utilities_colors_paint
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_orange */

.text
.balign 16
.globl utilities_colors_bold
utilities_colors_bold:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq utilities_colors_style_bold(%rip), %rcx
	callq utilities_colors_paint
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_bold */

.text
.balign 16
.globl utilities_colors_dim
utilities_colors_dim:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq utilities_colors_style_dim(%rip), %rcx
	callq utilities_colors_paint
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_dim */

.text
.balign 16
.globl utilities_colors_italic
utilities_colors_italic:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq utilities_colors_style_italic(%rip), %rcx
	callq utilities_colors_paint
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_italic */

.text
.balign 16
.globl utilities_colors_red
utilities_colors_red:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq utilities_colors_color_red(%rip), %rcx
	callq utilities_colors_paint
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_red */

.text
.balign 16
.globl utilities_colors_green
utilities_colors_green:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq utilities_colors_color_green(%rip), %rcx
	callq utilities_colors_paint
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_green */

.text
.balign 16
.globl utilities_colors_yellow
utilities_colors_yellow:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq utilities_colors_color_yellow(%rip), %rcx
	callq utilities_colors_paint
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_yellow */

.text
.balign 16
.globl utilities_colors_path
utilities_colors_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq utilities_colors_color_cyan(%rip), %rcx
	callq utilities_colors_paint
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_path */

.text
.balign 16
.globl utilities_colors_magenta
utilities_colors_magenta:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rdx
	subq $32, %rsp
	leaq utilities_colors_color_magenta(%rip), %rcx
	callq utilities_colors_paint
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_magenta */

.text
.balign 16
.globl utilities_colors_strip
utilities_colors_strip:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq utilities_colors_strip_ansi
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_strip */

.text
.balign 16
.globl utilities_colors_visible_length
utilities_colors_visible_length:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq utilities_colors_strip
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_length
	subq $-32, %rsp
	leave
	ret
/* end function utilities_colors_visible_length */

.text
.balign 16
utilities_colors_strip_ansi:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rcx, %rbx
	subq $32, %rsp
	leaq str16(%rip), %rdx
	movq %rbx, %rcx
	callq donna_string_index_of
	movq %rax, %rdi
	subq $-32, %rsp
	cmpq $-1, %rdi
	jz Lbb33
	subq $32, %rsp
	movq %rdi, %r8
	movl $0, %edx
	movq %rbx, %rcx
	callq donna_string_slice
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rdi, %r12
	addq $2, %r12
	subq $32, %rsp
	movq %rbx, %rcx
	callq donna_string_length
	movq %r12, %rdx
	movq %rax, %rcx
	movq %rbx, %rax
	subq $-32, %rsp
	subq %rdi, %rcx
	movq %rcx, %r8
	subq $2, %r8
	subq $32, %rsp
	movq %rax, %rcx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str29(%rip), %rdx
	movq %rcx, %rdi
	callq donna_string_index_of
	movq %rdi, %rcx
	movq %rax, %rbx
	movq %rsi, %rax
	subq $-32, %rsp
	cmpq $-1, %rbx
	movq %rax, %rdi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb31
	movq %rbx, %r13
	addq $1, %r13
	subq $32, %rsp
	movq %rcx, %r12
	callq donna_string_length
	movq %r13, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	subq %rbx, %rax
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_strip_ansi
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rax, %rcx
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb34
Lbb31:
	movq %rdi, %rax
	movq %rax, (%rsi)
	jmp Lbb34
Lbb33:
	movq %rbx, %rax
Lbb34:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function utilities_colors_strip_ansi */

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

