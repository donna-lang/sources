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
str49:
	.ascii "^"
	.byte 0
/* end data */

.data
.balign 8
str51:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str54:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str60:
	.ascii " "
	.byte 226
	.byte 148
	.byte 130
	.byte 0
/* end data */

.data
.balign 8
str63:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str66:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str76:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str77:
	.ascii "hint:"
	.byte 0
/* end data */

.data
.balign 8
str80:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str90:
	.ascii " "
	.byte 226
	.byte 148
	.byte 130
	.byte 0
/* end data */

.data
.balign 8
str102:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str105:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str114:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl errors_reporter_render_error
errors_reporter_render_error:
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
	bl	errors_error_error_span
	mov	x21, x0
	mov	x0, x19
	bl	errors_messages_error_message
	ldr	x1, [x0]
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x0, str8
	add	x0, x0, #:lo12:str8
	bl	utilities_colors_error_header
	mov	x1, x23
	mov	x23, x0
	adrp	x0, str10
	add	x0, x0, #:lo12:str10
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x23
	bl	__rt_str_concat
	mov	x4, x22
	mov	x3, x21
	mov	x2, x20
	mov	x1, x19
	adrp	x5, utilities_colors_error_header
	add	x5, x5, #:lo12:utilities_colors_error_header
	bl	errors_reporter_render
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type errors_reporter_render_error, @function
.size errors_reporter_render_error, .-errors_reporter_render_error
/* end function errors_reporter_render_error */

.text
.balign 16
.globl errors_reporter_render_warning
errors_reporter_render_warning:
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
	bl	errors_error_warning_span
	mov	x21, x0
	mov	x0, x19
	bl	errors_messages_warning_message
	ldr	x1, [x0]
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x0, str23
	add	x0, x0, #:lo12:str23
	bl	utilities_colors_warning_header
	mov	x1, x23
	mov	x23, x0
	adrp	x0, str25
	add	x0, x0, #:lo12:str25
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x23
	bl	__rt_str_concat
	mov	x4, x22
	mov	x3, x21
	mov	x2, x20
	mov	x1, x19
	adrp	x5, utilities_colors_yellow
	add	x5, x5, #:lo12:utilities_colors_yellow
	bl	errors_reporter_render
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type errors_reporter_render_warning, @function
.size errors_reporter_render_warning, .-errors_reporter_render_warning
/* end function errors_reporter_render_warning */

.text
.balign 16
errors_reporter_render:
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
	bl	utilities_location_span_start
	bl	utilities_location_pos_line
	mov	x22, x0
	mov	x0, x19
	mov	x19, x0
	bl	utilities_location_span_start
	bl	utilities_location_pos_col
	str	x0, [x29, 72]
	mov	x0, x19
	mov	x19, x0
	bl	utilities_location_span_length
	str	x0, [x29, 56]
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	donna_int_to_string
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str35
	add	x0, x0, #:lo12:str35
	bl	donna_string_repeat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, str39
	add	x1, x1, #:lo12:str39
	mov	x25, x0
	mov	x0, x19
	bl	__rt_str_concat
	bl	utilities_colors_light_blue
	str	x0, [x29, 48]
	mov	x0, x25
	adrp	x1, str42
	add	x1, x1, #:lo12:str42
	mov	x25, x0
	mov	x0, x19
	bl	__rt_str_concat
	bl	utilities_colors_light_blue
	str	x0, [x29, 64]
	mov	x0, x25
	ldr	x27, [x29, 72]
	bl	utilities_location_short_label
	bl	utilities_colors_light_blue
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	ldr	x0, [x29, 64]
	bl	__rt_str_concat
	str	x0, [x29, 40]
	mov	x0, x21
	ldr	x1, [x29, 56]
	mov	x21, x1
	mov	x1, x22
	bl	errors_reporter_get_line
	mov	x1, x21
	str	x0, [x29, 24]
	ldr	x21, [x29, 48]
	adrp	x0, str49
	add	x0, x0, #:lo12:str49
	bl	donna_string_repeat
	mov	x1, x23
	str	x0, [x29, 32]
	ldr	x23, [x29, 40]
	mov	x0, #1
	mov	x25, x1
	sub	x1, x27, x0
	adrp	x0, str51
	add	x0, x0, #:lo12:str51
	bl	donna_string_repeat
	mov	x1, x25
	str	x0, [x29, 16]
	ldr	x0, [x29, 32]
	mov	x25, x1
	adrp	x1, str54
	add	x1, x1, #:lo12:str54
	bl	__rt_str_concat
	mov	x1, x25
	ldr	x25, [x29, 24]
	bl	__rt_str_concat
	mov	x5, x26
	ldr	x26, [x29, 16]
	blr	x5
	mov	x1, x0
	mov	x0, x26
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	bl	donna_int_to_string
	mov	x1, x25
	mov	x25, x1
	adrp	x1, str60
	add	x1, x1, #:lo12:str60
	bl	__rt_str_concat
	bl	utilities_colors_light_blue
	mov	x1, x25
	mov	x25, x1
	adrp	x1, str63
	add	x1, x1, #:lo12:str63
	bl	__rt_str_concat
	mov	x1, x25
	bl	__rt_str_concat
	mov	x1, x22
	mov	x22, x0
	mov	x0, x21
	mov	x21, x1
	adrp	x1, str66
	add	x1, x1, #:lo12:str66
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	mov	x0, x24
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #1
	beq	.L6
	mov	x21, x0
	adrp	x0, str77
	add	x0, x0, #:lo12:str77
	bl	utilities_colors_orange
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	adrp	x0, str76
	add	x0, x0, #:lo12:str76
	bl	__rt_str_concat
	mov	x1, x24
	mov	x24, x1
	adrp	x1, str80
	add	x1, x1, #:lo12:str80
	bl	__rt_str_concat
	mov	x1, x24
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x21
	b	.L7
.L6:
	adrp	x1, str75
	add	x1, x1, #:lo12:str75
.L7:
	mov	x24, x1
	mov	x21, x0
	mov	x0, #24
	bl	malloc
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
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x19, x0
	mov	x0, #24
	bl	malloc
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
	adrp	x1, str90
	add	x1, x1, #:lo12:str90
	bl	__rt_str_concat
	bl	utilities_colors_light_blue
	mov	x24, x0
	mov	x0, #24
	bl	malloc
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
	bl	malloc
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
	bl	malloc
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
	adrp	x1, str102
	add	x1, x1, #:lo12:str102
	bl	donna_string_join
	mov	x1, x19
	bl	__rt_str_concat
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
.type errors_reporter_render, @function
.size errors_reporter_render, .-errors_reporter_render
/* end function errors_reporter_render */

.text
.balign 16
errors_reporter_get_line:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	adrp	x1, str105
	add	x1, x1, #:lo12:str105
	bl	donna_string_split
	mov	x1, x19
	mov	x2, #1
	bl	errors_reporter_nth_line
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type errors_reporter_get_line, @function
.size errors_reporter_get_line, .-errors_reporter_get_line
/* end function errors_reporter_get_line */

.text
.balign 16
errors_reporter_nth_line:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x3, x0
	ldr	x0, [x3]
	cmp	x0, #0
	beq	.L16
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
	beq	.L15
	mov	x0, x3
	mov	x3, #1
	add	x2, x2, x3
	bl	errors_reporter_nth_line
	str	x0, [x19]
	b	.L17
.L15:
	str	x0, [x19]
	b	.L17
.L16:
	adrp	x0, str114
	add	x0, x0, #:lo12:str114
.L17:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type errors_reporter_nth_line, @function
.size errors_reporter_nth_line, .-errors_reporter_nth_line
/* end function errors_reporter_nth_line */

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
