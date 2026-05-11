.data
.balign 8
_str17:
	.byte 27
	.ascii "["
	.byte 0
/* end data */

.data
.balign 8
_str30:
	.ascii "m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_reset
_utilities_colors_reset:
	.byte 27
	.ascii "[0m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_style_bold
_utilities_colors_style_bold:
	.byte 27
	.ascii "[1m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_style_dim
_utilities_colors_style_dim:
	.byte 27
	.ascii "[2m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_style_italic
_utilities_colors_style_italic:
	.byte 27
	.ascii "[3m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_color_orange
_utilities_colors_color_orange:
	.byte 27
	.ascii "[38;5;208m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_color_red
_utilities_colors_color_red:
	.byte 27
	.ascii "[31m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_color_green
_utilities_colors_color_green:
	.byte 27
	.ascii "[32m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_color_yellow
_utilities_colors_color_yellow:
	.byte 27
	.ascii "[33m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_color_cyan
_utilities_colors_color_cyan:
	.byte 27
	.ascii "[36m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_color_light_blue
_utilities_colors_color_light_blue:
	.byte 27
	.ascii "[38;5;111m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_color_magenta
_utilities_colors_color_magenta:
	.byte 27
	.ascii "[35m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_bold_red
_utilities_colors_bold_red:
	.byte 27
	.ascii "[1;31m"
	.byte 0
/* end data */

.data
.balign 8
.globl _utilities_colors_bold_yellow
_utilities_colors_bold_yellow:
	.byte 27
	.ascii "[1;33m"
	.byte 0
/* end data */

.text
.balign 16
.globl _utilities_colors_paint
_utilities_colors_paint:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _utilities_colors_reset(%rip), %rsi
	callq ___rt_str_concat
	leave
	ret
/* end function utilities_colors_paint */

.text
.balign 16
.globl _utilities_colors_error_header
_utilities_colors_error_header:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_bold_red(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_error_header */

.text
.balign 16
.globl _utilities_colors_warning_header
_utilities_colors_warning_header:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_bold_yellow(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_warning_header */

.text
.balign 16
.globl _utilities_colors_orange
_utilities_colors_orange:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_color_orange(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_orange */

.text
.balign 16
.globl _utilities_colors_bold
_utilities_colors_bold:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_style_bold(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_bold */

.text
.balign 16
.globl _utilities_colors_dim
_utilities_colors_dim:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_style_dim(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_dim */

.text
.balign 16
.globl _utilities_colors_italic
_utilities_colors_italic:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_style_italic(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_italic */

.text
.balign 16
.globl _utilities_colors_red
_utilities_colors_red:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_color_red(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_red */

.text
.balign 16
.globl _utilities_colors_green
_utilities_colors_green:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_color_green(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_green */

.text
.balign 16
.globl _utilities_colors_yellow
_utilities_colors_yellow:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_color_yellow(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_yellow */

.text
.balign 16
.globl _utilities_colors_path
_utilities_colors_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_color_cyan(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_path */

.text
.balign 16
.globl _utilities_colors_light_blue
_utilities_colors_light_blue:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_color_light_blue(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_light_blue */

.text
.balign 16
.globl _utilities_colors_magenta
_utilities_colors_magenta:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rsi
	leaq _utilities_colors_color_magenta(%rip), %rdi
	callq _utilities_colors_paint
	leave
	ret
/* end function utilities_colors_magenta */

.text
.balign 16
.globl _utilities_colors_strip
_utilities_colors_strip:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _utilities_colors_strip_ansi
	leave
	ret
/* end function utilities_colors_strip */

.text
.balign 16
.globl _utilities_colors_visible_length
_utilities_colors_visible_length:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _utilities_colors_strip
	movq %rax, %rdi
	callq _donna_string_length
	leave
	ret
/* end function utilities_colors_visible_length */

.text
.balign 16
_utilities_colors_strip_ansi:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13
	leaq _str17(%rip), %rsi
	movq %r13, %rdi
	callq _donna_string_index_of
	movq %rax, %r12
	cmpq $-1, %r12
	jz Lbb35
	movq %r12, %rdx
	movl $0, %esi
	movq %r13, %rdi
	callq _donna_string_slice
	movq %rax, %rbx
	movq %r12, %r14
	addq $2, %r14
	movq %r13, %rdi
	callq _donna_string_length
	movq %r14, %rsi
	movq %rax, %rcx
	movq %r13, %rax
	subq %r12, %rcx
	movq %rcx, %rdx
	subq $2, %rdx
	movq %rax, %rdi
	callq _donna_string_slice
	movq %rax, %rdi
	leaq _str30(%rip), %rsi
	movq %rdi, %r12
	callq _donna_string_index_of
	movq %r12, %rdi
	movq %rax, %r13
	movq %rbx, %rax
	cmpq $-1, %r13
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb33
	movq %r13, %r15
	addq $1, %r15
	movq %rdi, %r14
	callq _donna_string_length
	movq %r15, %rsi
	movq %r14, %rdi
	subq %r13, %rax
	movq %rax, %rdx
	subq $1, %rdx
	callq _donna_string_slice
	movq %rax, %rdi
	callq _utilities_colors_strip_ansi
	movq %rax, %rsi
	movq %r12, %rax
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb36
Lbb33:
	movq %r12, %rax
	movq %rax, (%rbx)
	jmp Lbb36
Lbb35:
	movq %r13, %rax
Lbb36:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function utilities_colors_strip_ansi */

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

