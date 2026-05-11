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
.balign 4
.globl _errors_reporter_render_error
_errors_reporter_render_error:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x22, x1
	mov	x19, x0
	bl	_errors_error_error_span
	mov	x21, x0
	mov	x0, x19
	bl	_errors_messages_error_message
	ldr	x1, [x0]
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x0, _str8@page
	add	x0, x0, _str8@pageoff
	bl	_utilities_colors_error_header
	mov	x1, x23
	mov	x23, x0
	adrp	x0, _str10@page
	add	x0, x0, _str10@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_bold
	mov	x1, x0
	mov	x0, x23
	bl	___rt_str_concat
	mov	x4, x22
	mov	x3, x21
	mov	x2, x20
	mov	x1, x19
	adrp	x5, _utilities_colors_error_header@page
	add	x5, x5, _utilities_colors_error_header@pageoff
	bl	_errors_reporter_render
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function errors_reporter_render_error */

.text
.balign 4
.globl _errors_reporter_render_warning
_errors_reporter_render_warning:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x22, x1
	mov	x19, x0
	bl	_errors_error_warning_span
	mov	x21, x0
	mov	x0, x19
	bl	_errors_messages_warning_message
	ldr	x1, [x0]
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x0, _str23@page
	add	x0, x0, _str23@pageoff
	bl	_utilities_colors_warning_header
	mov	x1, x23
	mov	x23, x0
	adrp	x0, _str25@page
	add	x0, x0, _str25@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_bold
	mov	x1, x0
	mov	x0, x23
	bl	___rt_str_concat
	mov	x4, x22
	mov	x3, x21
	mov	x2, x20
	mov	x1, x19
	adrp	x5, _utilities_colors_yellow@page
	add	x5, x5, _utilities_colors_yellow@pageoff
	bl	_errors_reporter_render
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function errors_reporter_render_warning */

.text
.balign 4
_errors_reporter_render:
	hint	#34
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [x29, 152]
	str	x20, [x29, 144]
	str	x21, [x29, 136]
	str	x22, [x29, 128]
	str	x23, [x29, 120]
	str	x24, [x29, 112]
	str	x25, [x29, 104]
	str	x26, [x29, 96]
	str	x27, [x29, 88]
	mov	x26, x5
	mov	x21, x4
	mov	x24, x2
	mov	x23, x1
	mov	x20, x0
	mov	x0, x3
	mov	x19, x0
	bl	_utilities_location_span_start
	bl	_utilities_location_pos_line
	mov	x22, x0
	mov	x0, x19
	mov	x19, x0
	bl	_utilities_location_span_start
	bl	_utilities_location_pos_col
	str	x0, [x29, 72]
	mov	x0, x19
	mov	x19, x0
	bl	_utilities_location_span_length
	str	x0, [x29, 56]
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	_donna_int_to_string
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, _str35@page
	add	x0, x0, _str35@pageoff
	bl	_donna_string_repeat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, _str39@page
	add	x1, x1, _str39@pageoff
	mov	x25, x0
	mov	x0, x19
	bl	___rt_str_concat
	bl	_utilities_colors_light_blue
	str	x0, [x29, 48]
	mov	x0, x25
	adrp	x1, _str42@page
	add	x1, x1, _str42@pageoff
	mov	x25, x0
	mov	x0, x19
	bl	___rt_str_concat
	bl	_utilities_colors_light_blue
	str	x0, [x29, 64]
	mov	x0, x25
	ldr	x27, [x29, 72]
	bl	_utilities_location_short_label
	bl	_utilities_colors_light_blue
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	ldr	x0, [x29, 64]
	bl	___rt_str_concat
	str	x0, [x29, 40]
	mov	x0, x21
	ldr	x1, [x29, 56]
	mov	x21, x1
	mov	x1, x22
	bl	_errors_reporter_get_line
	mov	x1, x21
	str	x0, [x29, 24]
	ldr	x21, [x29, 48]
	adrp	x0, _str49@page
	add	x0, x0, _str49@pageoff
	bl	_donna_string_repeat
	mov	x1, x23
	str	x0, [x29, 32]
	ldr	x23, [x29, 40]
	mov	x0, #1
	mov	x25, x1
	sub	x1, x27, x0
	adrp	x0, _str51@page
	add	x0, x0, _str51@pageoff
	bl	_donna_string_repeat
	mov	x1, x25
	str	x0, [x29, 16]
	ldr	x0, [x29, 32]
	mov	x25, x1
	adrp	x1, _str54@page
	add	x1, x1, _str54@pageoff
	bl	___rt_str_concat
	mov	x1, x25
	ldr	x25, [x29, 24]
	bl	___rt_str_concat
	mov	x5, x26
	ldr	x26, [x29, 16]
	blr	x5
	mov	x1, x0
	mov	x0, x26
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	bl	_donna_int_to_string
	mov	x1, x25
	mov	x25, x1
	adrp	x1, _str60@page
	add	x1, x1, _str60@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_light_blue
	mov	x1, x25
	mov	x25, x1
	adrp	x1, _str63@page
	add	x1, x1, _str63@pageoff
	bl	___rt_str_concat
	mov	x1, x25
	bl	___rt_str_concat
	mov	x1, x22
	mov	x22, x0
	mov	x0, x21
	mov	x21, x1
	adrp	x1, _str66@page
	add	x1, x1, _str66@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	mov	x0, x24
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #1
	beq	L6
	mov	x21, x0
	adrp	x0, _str77@page
	add	x0, x0, _str77@pageoff
	bl	_utilities_colors_orange
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	adrp	x0, _str76@page
	add	x0, x0, _str76@pageoff
	bl	___rt_str_concat
	mov	x1, x24
	mov	x24, x1
	adrp	x1, _str80@page
	add	x1, x1, _str80@pageoff
	bl	___rt_str_concat
	mov	x1, x24
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x21
	b	L7
L6:
	adrp	x1, _str75@page
	add	x1, x1, _str75@pageoff
L7:
	mov	x24, x1
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x24
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x2, #1
	str	x2, [x21]
	mov	x2, #8
	add	x2, x21, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x21, x2
	mov	x24, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x24
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x2, #1
	str	x2, [x19]
	mov	x2, #8
	add	x2, x19, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x19, x2
	str	x21, [x2]
	mov	x21, x1
	adrp	x1, _str90@page
	add	x1, x1, _str90@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_light_blue
	mov	x24, x0
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x19, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, x21
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x19, [x2]
	mov	x19, x1
	adrp	x1, _str102@page
	add	x1, x1, _str102@pageoff
	bl	_donna_string_join
	mov	x1, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 152]
	ldr	x20, [x29, 144]
	ldr	x21, [x29, 136]
	ldr	x22, [x29, 128]
	ldr	x23, [x29, 120]
	ldr	x24, [x29, 112]
	ldr	x25, [x29, 104]
	ldr	x26, [x29, 96]
	ldr	x27, [x29, 88]
	ldp	x29, x30, [sp], 160
	ret
/* end function errors_reporter_render */

.text
.balign 4
_errors_reporter_get_line:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	adrp	x1, _str105@page
	add	x1, x1, _str105@pageoff
	bl	_donna_string_split
	mov	x1, x19
	mov	x2, #1
	bl	_errors_reporter_nth_line
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_reporter_get_line */

.text
.balign 4
_errors_reporter_nth_line:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x3, x0
	ldr	x0, [x3]
	cmp	x0, #0
	beq	L16
	mov	x0, #8
	add	x0, x3, x0
	ldr	x0, [x0]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x3, [x3]
	cmp	x1, x2
	cset	x4, eq
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	cmp	x4, #1
	beq	L15
	mov	x0, x3
	mov	x3, #1
	add	x2, x2, x3
	bl	_errors_reporter_nth_line
	str	x0, [x19]
	b	L17
L15:
	str	x0, [x19]
	b	L17
L16:
	adrp	x0, _str114@page
	add	x0, x0, _str114@pageoff
L17:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_reporter_nth_line */

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

