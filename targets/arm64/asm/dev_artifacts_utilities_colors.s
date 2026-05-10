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
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	__rt_str_concat
	adrp	x1, utilities_colors_reset
	add	x1, x1, #:lo12:utilities_colors_reset
	bl	__rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_paint, @function
.size utilities_colors_paint, .-utilities_colors_paint
/* end function utilities_colors_paint */

.text
.balign 16
.globl utilities_colors_error_header
utilities_colors_error_header:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, utilities_colors_bold_red
	add	x0, x0, #:lo12:utilities_colors_bold_red
	bl	utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_error_header, @function
.size utilities_colors_error_header, .-utilities_colors_error_header
/* end function utilities_colors_error_header */

.text
.balign 16
.globl utilities_colors_warning_header
utilities_colors_warning_header:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, utilities_colors_bold_yellow
	add	x0, x0, #:lo12:utilities_colors_bold_yellow
	bl	utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_warning_header, @function
.size utilities_colors_warning_header, .-utilities_colors_warning_header
/* end function utilities_colors_warning_header */

.text
.balign 16
.globl utilities_colors_orange
utilities_colors_orange:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, utilities_colors_color_orange
	add	x0, x0, #:lo12:utilities_colors_color_orange
	bl	utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_orange, @function
.size utilities_colors_orange, .-utilities_colors_orange
/* end function utilities_colors_orange */

.text
.balign 16
.globl utilities_colors_bold
utilities_colors_bold:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, utilities_colors_style_bold
	add	x0, x0, #:lo12:utilities_colors_style_bold
	bl	utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_bold, @function
.size utilities_colors_bold, .-utilities_colors_bold
/* end function utilities_colors_bold */

.text
.balign 16
.globl utilities_colors_dim
utilities_colors_dim:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, utilities_colors_style_dim
	add	x0, x0, #:lo12:utilities_colors_style_dim
	bl	utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_dim, @function
.size utilities_colors_dim, .-utilities_colors_dim
/* end function utilities_colors_dim */

.text
.balign 16
.globl utilities_colors_italic
utilities_colors_italic:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, utilities_colors_style_italic
	add	x0, x0, #:lo12:utilities_colors_style_italic
	bl	utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_italic, @function
.size utilities_colors_italic, .-utilities_colors_italic
/* end function utilities_colors_italic */

.text
.balign 16
.globl utilities_colors_red
utilities_colors_red:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, utilities_colors_color_red
	add	x0, x0, #:lo12:utilities_colors_color_red
	bl	utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_red, @function
.size utilities_colors_red, .-utilities_colors_red
/* end function utilities_colors_red */

.text
.balign 16
.globl utilities_colors_green
utilities_colors_green:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, utilities_colors_color_green
	add	x0, x0, #:lo12:utilities_colors_color_green
	bl	utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_green, @function
.size utilities_colors_green, .-utilities_colors_green
/* end function utilities_colors_green */

.text
.balign 16
.globl utilities_colors_yellow
utilities_colors_yellow:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, utilities_colors_color_yellow
	add	x0, x0, #:lo12:utilities_colors_color_yellow
	bl	utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_yellow, @function
.size utilities_colors_yellow, .-utilities_colors_yellow
/* end function utilities_colors_yellow */

.text
.balign 16
.globl utilities_colors_path
utilities_colors_path:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, utilities_colors_color_cyan
	add	x0, x0, #:lo12:utilities_colors_color_cyan
	bl	utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_path, @function
.size utilities_colors_path, .-utilities_colors_path
/* end function utilities_colors_path */

.text
.balign 16
.globl utilities_colors_magenta
utilities_colors_magenta:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, utilities_colors_color_magenta
	add	x0, x0, #:lo12:utilities_colors_color_magenta
	bl	utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_magenta, @function
.size utilities_colors_magenta, .-utilities_colors_magenta
/* end function utilities_colors_magenta */

.text
.balign 16
.globl utilities_colors_strip
utilities_colors_strip:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	utilities_colors_strip_ansi
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_strip, @function
.size utilities_colors_strip, .-utilities_colors_strip
/* end function utilities_colors_strip */

.text
.balign 16
.globl utilities_colors_visible_length
utilities_colors_visible_length:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	utilities_colors_strip
	bl	donna_string_length
	ldp	x29, x30, [sp], 16
	ret
.type utilities_colors_visible_length, @function
.size utilities_colors_visible_length, .-utilities_colors_visible_length
/* end function utilities_colors_visible_length */

.text
.balign 16
utilities_colors_strip_ansi:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	adrp	x1, str16
	add	x1, x1, #:lo12:str16
	mov	x19, x0
	bl	donna_string_index_of
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmn	x19, #1
	beq	.L33
	mov	x2, x19
	mov	x1, #0
	mov	x20, x0
	bl	donna_string_slice
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, #2
	add	x22, x19, x1
	mov	x21, x0
	bl	donna_string_length
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	sub	x2, x2, x19
	mov	x3, #2
	sub	x2, x2, x3
	bl	donna_string_slice
	adrp	x1, str29
	add	x1, x1, #:lo12:str29
	mov	x19, x0
	bl	donna_string_index_of
	mov	x21, x0
	mov	x0, x19
	cmn	x21, #1
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L31
	mov	x1, #1
	add	x23, x21, x1
	mov	x22, x0
	bl	donna_string_length
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	sub	x2, x2, x21
	mov	x3, #1
	sub	x2, x2, x3
	bl	donna_string_slice
	bl	utilities_colors_strip_ansi
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L33
.L31:
	mov	x0, x20
	str	x0, [x19]
.L33:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type utilities_colors_strip_ansi, @function
.size utilities_colors_strip_ansi, .-utilities_colors_strip_ansi
/* end function utilities_colors_strip_ansi */

.text
.balign 16
__rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	strlen
	mov	x19, x0
	mov	x0, x20
	bl	strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	malloc
	mov	x1, x19
	mov	x19, x0
	bl	strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
