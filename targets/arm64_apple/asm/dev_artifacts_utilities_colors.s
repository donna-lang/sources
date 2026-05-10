.data
.balign 8
_str16:
	.byte 27
	.ascii "["
	.byte 0
/* end data */

.data
.balign 8
_str29:
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
.balign 4
.globl _utilities_colors_paint
_utilities_colors_paint:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	___rt_str_concat
	adrp	x1, _utilities_colors_reset@page
	add	x1, x1, _utilities_colors_reset@pageoff
	bl	___rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_paint */

.text
.balign 4
.globl _utilities_colors_error_header
_utilities_colors_error_header:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, _utilities_colors_bold_red@page
	add	x0, x0, _utilities_colors_bold_red@pageoff
	bl	_utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_error_header */

.text
.balign 4
.globl _utilities_colors_warning_header
_utilities_colors_warning_header:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, _utilities_colors_bold_yellow@page
	add	x0, x0, _utilities_colors_bold_yellow@pageoff
	bl	_utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_warning_header */

.text
.balign 4
.globl _utilities_colors_orange
_utilities_colors_orange:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, _utilities_colors_color_orange@page
	add	x0, x0, _utilities_colors_color_orange@pageoff
	bl	_utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_orange */

.text
.balign 4
.globl _utilities_colors_bold
_utilities_colors_bold:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, _utilities_colors_style_bold@page
	add	x0, x0, _utilities_colors_style_bold@pageoff
	bl	_utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_bold */

.text
.balign 4
.globl _utilities_colors_dim
_utilities_colors_dim:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, _utilities_colors_style_dim@page
	add	x0, x0, _utilities_colors_style_dim@pageoff
	bl	_utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_dim */

.text
.balign 4
.globl _utilities_colors_italic
_utilities_colors_italic:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, _utilities_colors_style_italic@page
	add	x0, x0, _utilities_colors_style_italic@pageoff
	bl	_utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_italic */

.text
.balign 4
.globl _utilities_colors_red
_utilities_colors_red:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, _utilities_colors_color_red@page
	add	x0, x0, _utilities_colors_color_red@pageoff
	bl	_utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_red */

.text
.balign 4
.globl _utilities_colors_green
_utilities_colors_green:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, _utilities_colors_color_green@page
	add	x0, x0, _utilities_colors_color_green@pageoff
	bl	_utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_green */

.text
.balign 4
.globl _utilities_colors_yellow
_utilities_colors_yellow:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, _utilities_colors_color_yellow@page
	add	x0, x0, _utilities_colors_color_yellow@pageoff
	bl	_utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_yellow */

.text
.balign 4
.globl _utilities_colors_path
_utilities_colors_path:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, _utilities_colors_color_cyan@page
	add	x0, x0, _utilities_colors_color_cyan@pageoff
	bl	_utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_path */

.text
.balign 4
.globl _utilities_colors_magenta
_utilities_colors_magenta:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, _utilities_colors_color_magenta@page
	add	x0, x0, _utilities_colors_color_magenta@pageoff
	bl	_utilities_colors_paint
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_magenta */

.text
.balign 4
.globl _utilities_colors_strip
_utilities_colors_strip:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_utilities_colors_strip_ansi
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_strip */

.text
.balign 4
.globl _utilities_colors_visible_length
_utilities_colors_visible_length:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_utilities_colors_strip
	bl	_donna_string_length
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_colors_visible_length */

.text
.balign 4
_utilities_colors_strip_ansi:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	adrp	x1, _str16@page
	add	x1, x1, _str16@pageoff
	mov	x19, x0
	bl	_donna_string_index_of
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmn	x19, #1
	beq	L33
	mov	x2, x19
	mov	x1, #0
	mov	x20, x0
	bl	_donna_string_slice
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, #2
	add	x22, x19, x1
	mov	x21, x0
	bl	_donna_string_length
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	sub	x2, x2, x19
	mov	x3, #2
	sub	x2, x2, x3
	bl	_donna_string_slice
	adrp	x1, _str29@page
	add	x1, x1, _str29@pageoff
	mov	x19, x0
	bl	_donna_string_index_of
	mov	x21, x0
	mov	x0, x19
	cmn	x21, #1
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L31
	mov	x1, #1
	add	x23, x21, x1
	mov	x22, x0
	bl	_donna_string_length
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	sub	x2, x2, x21
	mov	x3, #1
	sub	x2, x2, x3
	bl	_donna_string_slice
	bl	_utilities_colors_strip_ansi
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	str	x0, [x19]
	b	L33
L31:
	mov	x0, x20
	str	x0, [x19]
L33:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function utilities_colors_strip_ansi */

.text
.balign 4
___rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	_strlen
	mov	x19, x0
	mov	x0, x20
	bl	_strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	bl	_strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	_strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function __rt_str_concat */

