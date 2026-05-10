.data
.balign 8
str0:
	.ascii "Compiling"
	.byte 0
/* end data */

.data
.balign 8
str3:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str4:
	.ascii "Fetching"
	.byte 0
/* end data */

.data
.balign 8
str7:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str11:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str12:
	.ascii "Compiled"
	.byte 0
/* end data */

.data
.balign 8
str14:
	.ascii "in "
	.byte 0
/* end data */

.data
.balign 8
str19:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str20:
	.ascii "Formatting"
	.byte 0
/* end data */

.data
.balign 8
str23:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str24:
	.ascii "Formatted"
	.byte 0
/* end data */

.data
.balign 8
str26:
	.ascii "in "
	.byte 0
/* end data */

.data
.balign 8
str31:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str32:
	.ascii "Generated"
	.byte 0
/* end data */

.data
.balign 8
str34:
	.ascii "in "
	.byte 0
/* end data */

.data
.balign 8
str39:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str40:
	.ascii "Cleaning"
	.byte 0
/* end data */

.data
.balign 8
str44:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str45:
	.ascii "Cleaned"
	.byte 0
/* end data */

.data
.balign 8
str47:
	.ascii "in "
	.byte 0
/* end data */

.data
.balign 8
str52:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str53:
	.ascii "Checking"
	.byte 0
/* end data */

.data
.balign 8
str56:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str57:
	.ascii "Checked"
	.byte 0
/* end data */

.data
.balign 8
str59:
	.ascii "in "
	.byte 0
/* end data */

.data
.balign 8
str64:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str66:
	.byte 226
	.byte 134
	.byte 146
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str70:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str76:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str78:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str81:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str82:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
str84:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str87:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str88:
	.ascii "  hint: "
	.byte 0
/* end data */

.data
.balign 8
str91:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str92:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str95:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str102:
	.ascii "Donna found "
	.byte 0
/* end data */

.data
.balign 8
str105:
	.ascii " error(s) and "
	.byte 0
/* end data */

.data
.balign 8
str109:
	.ascii " warning(s)."
	.byte 0
/* end data */

.data
.balign 8
str111:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str118:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str119:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str120:
	.ascii "Donna found "
	.byte 0
/* end data */

.data
.balign 8
str123:
	.ascii " error(s) and "
	.byte 0
/* end data */

.data
.balign 8
str127:
	.ascii " warning(s)."
	.byte 0
/* end data */

.data
.balign 8
str129:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str132:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str155:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str156:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str168:
	.ascii "us"
	.byte 0
/* end data */

.data
.balign 8
str189:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
str195:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str198:
	.ascii "ms"
	.byte 0
/* end data */

.data
.balign 8
str209:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
str215:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str218:
	.ascii "s"
	.byte 0
/* end data */

.text
.balign 16
.globl utilities_logger_step
utilities_logger_step:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str0
	add	x0, x0, #:lo12:str0
	bl	utilities_logger_action
	mov	x1, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str3
	add	x0, x0, #:lo12:str3
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_step, @function
.size utilities_logger_step, .-utilities_logger_step
/* end function utilities_logger_step */

.text
.balign 16
.globl utilities_logger_fetch
utilities_logger_fetch:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x1
	mov	x20, x0
	adrp	x0, str4
	add	x0, x0, #:lo12:str4
	bl	utilities_logger_action
	mov	x1, x20
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x0
	adrp	x0, str7
	add	x0, x0, #:lo12:str7
	bl	__rt_str_concat
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str11
	add	x0, x0, #:lo12:str11
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_fetch, @function
.size utilities_logger_fetch, .-utilities_logger_fetch
/* end function utilities_logger_fetch */

.text
.balign 16
.globl utilities_logger_ok
utilities_logger_ok:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x0, x1
	mov	x19, x0
	adrp	x0, str12
	add	x0, x0, #:lo12:str12
	bl	utilities_logger_action
	adrp	x1, str14
	add	x1, x1, #:lo12:str14
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_logger_format_duration
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str19
	add	x0, x0, #:lo12:str19
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_ok, @function
.size utilities_logger_ok, .-utilities_logger_ok
/* end function utilities_logger_ok */

.text
.balign 16
.globl utilities_logger_formatting
utilities_logger_formatting:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str20
	add	x0, x0, #:lo12:str20
	bl	utilities_logger_action
	mov	x1, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str23
	add	x0, x0, #:lo12:str23
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_formatting, @function
.size utilities_logger_formatting, .-utilities_logger_formatting
/* end function utilities_logger_formatting */

.text
.balign 16
.globl utilities_logger_fmt_ok
utilities_logger_fmt_ok:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str24
	add	x0, x0, #:lo12:str24
	bl	utilities_logger_action
	adrp	x1, str26
	add	x1, x1, #:lo12:str26
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_logger_format_duration
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str31
	add	x0, x0, #:lo12:str31
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_fmt_ok, @function
.size utilities_logger_fmt_ok, .-utilities_logger_fmt_ok
/* end function utilities_logger_fmt_ok */

.text
.balign 16
.globl utilities_logger_docs_ok
utilities_logger_docs_ok:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str32
	add	x0, x0, #:lo12:str32
	bl	utilities_logger_action
	adrp	x1, str34
	add	x1, x1, #:lo12:str34
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_logger_format_duration
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str39
	add	x0, x0, #:lo12:str39
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_docs_ok, @function
.size utilities_logger_docs_ok, .-utilities_logger_docs_ok
/* end function utilities_logger_docs_ok */

.text
.balign 16
.globl utilities_logger_cleaning
utilities_logger_cleaning:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str40
	add	x0, x0, #:lo12:str40
	bl	utilities_logger_action
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str44
	add	x0, x0, #:lo12:str44
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_cleaning, @function
.size utilities_logger_cleaning, .-utilities_logger_cleaning
/* end function utilities_logger_cleaning */

.text
.balign 16
.globl utilities_logger_clean_ok
utilities_logger_clean_ok:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str45
	add	x0, x0, #:lo12:str45
	bl	utilities_logger_action
	adrp	x1, str47
	add	x1, x1, #:lo12:str47
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_logger_format_duration
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str52
	add	x0, x0, #:lo12:str52
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_clean_ok, @function
.size utilities_logger_clean_ok, .-utilities_logger_clean_ok
/* end function utilities_logger_clean_ok */

.text
.balign 16
.globl utilities_logger_checking
utilities_logger_checking:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str53
	add	x0, x0, #:lo12:str53
	bl	utilities_logger_action
	mov	x1, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str56
	add	x0, x0, #:lo12:str56
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_checking, @function
.size utilities_logger_checking, .-utilities_logger_checking
/* end function utilities_logger_checking */

.text
.balign 16
.globl utilities_logger_check_ok
utilities_logger_check_ok:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str57
	add	x0, x0, #:lo12:str57
	bl	utilities_logger_action
	adrp	x1, str59
	add	x1, x1, #:lo12:str59
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_logger_format_duration
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str64
	add	x0, x0, #:lo12:str64
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_check_ok, @function
.size utilities_logger_check_ok, .-utilities_logger_check_ok
/* end function utilities_logger_check_ok */

.text
.balign 16
.globl utilities_logger_success
utilities_logger_success:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x2
	mov	x20, x1
	bl	utilities_logger_action
	adrp	x1, str66
	add	x1, x1, #:lo12:str66
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_logger_format_duration
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str70
	add	x0, x0, #:lo12:str70
	bl	__rt_str_concat
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str75
	add	x0, x0, #:lo12:str75
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_success, @function
.size utilities_logger_success, .-utilities_logger_success
/* end function utilities_logger_success */

.text
.balign 16
.globl utilities_logger_error
utilities_logger_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str76
	add	x0, x0, #:lo12:str76
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str78
	add	x1, x1, #:lo12:str78
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str81
	add	x0, x0, #:lo12:str81
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_error, @function
.size utilities_logger_error, .-utilities_logger_error
/* end function utilities_logger_error */

.text
.balign 16
.globl utilities_logger_warn
utilities_logger_warn:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str82
	add	x0, x0, #:lo12:str82
	bl	utilities_colors_yellow
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str84
	add	x1, x1, #:lo12:str84
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str87
	add	x0, x0, #:lo12:str87
	bl	printf
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_warn, @function
.size utilities_logger_warn, .-utilities_logger_warn
/* end function utilities_logger_warn */

.text
.balign 16
.globl utilities_logger_hint
utilities_logger_hint:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, str88
	add	x0, x0, #:lo12:str88
	bl	__rt_str_concat
	bl	utilities_colors_dim
	mov	x1, x0
	adrp	x0, str91
	add	x0, x0, #:lo12:str91
	bl	printf
	mov	w0, #0
	ldp	x29, x30, [sp], 16
	ret
.type utilities_logger_hint, @function
.size utilities_logger_hint, .-utilities_logger_hint
/* end function utilities_logger_hint */

.text
.balign 16
.globl utilities_logger_info
utilities_logger_info:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, x0
	adrp	x0, str92
	add	x0, x0, #:lo12:str92
	bl	__rt_str_concat
	bl	utilities_colors_dim
	mov	x1, x0
	adrp	x0, str95
	add	x0, x0, #:lo12:str95
	bl	printf
	mov	w0, #0
	ldp	x29, x30, [sp], 16
	ret
.type utilities_logger_info, @function
.size utilities_logger_info, .-utilities_logger_info
/* end function utilities_logger_info */

.text
.balign 16
.globl utilities_logger_summary
utilities_logger_summary:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	cmp	x0, #0
	cset	x1, eq
	cmp	x1, #0
	beq	.L34
	cmp	x20, #0
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L33
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str120
	add	x0, x0, #:lo12:str120
	bl	__rt_str_concat
	adrp	x1, str123
	add	x1, x1, #:lo12:str123
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	adrp	x1, str127
	add	x1, x1, #:lo12:str127
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str129
	add	x0, x0, #:lo12:str129
	bl	printf
	mov	x0, #0
	str	x0, [x19]
	b	.L36
.L33:
	adrp	x1, str118
	add	x1, x1, #:lo12:str118
	adrp	x0, str119
	add	x0, x0, #:lo12:str119
	bl	printf
	mov	x0, #0
	str	x0, [x19]
	b	.L36
.L34:
	mov	x19, x20
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str102
	add	x0, x0, #:lo12:str102
	bl	__rt_str_concat
	adrp	x1, str105
	add	x1, x1, #:lo12:str105
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	adrp	x1, str109
	add	x1, x1, #:lo12:str109
	bl	__rt_str_concat
	mov	x1, x0
	adrp	x0, str111
	add	x0, x0, #:lo12:str111
	bl	printf
.L36:
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_summary, @function
.size utilities_logger_summary, .-utilities_logger_summary
/* end function utilities_logger_summary */

.text
.balign 16
utilities_logger_action:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #10
	bl	utilities_logger_pad_left
	mov	x1, x0
	adrp	x0, str132
	add	x0, x0, #:lo12:str132
	bl	__rt_str_concat
	adrp	x1, str135
	add	x1, x1, #:lo12:str135
	bl	__rt_str_concat
	bl	utilities_colors_orange
	ldp	x29, x30, [sp], 16
	ret
.type utilities_logger_action, @function
.size utilities_logger_action, .-utilities_logger_action
/* end function utilities_logger_action */

.text
.balign 16
utilities_logger_pad_left:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x20
	cmp	x0, x1
	cset	x2, ge
	cmp	x2, #1
	beq	.L42
	sub	x0, x1, x0
	bl	utilities_logger_repeat_spaces
	mov	x1, x19
	bl	__rt_str_concat
	b	.L43
.L42:
	mov	x0, x19
.L43:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_pad_left, @function
.size utilities_logger_pad_left, .-utilities_logger_pad_left
/* end function utilities_logger_pad_left */

.text
.balign 16
utilities_logger_repeat_spaces:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, #0
	cset	x1, le
	cmp	x1, #1
	beq	.L46
	mov	x1, #1
	sub	x0, x0, x1
	bl	utilities_logger_repeat_spaces
	mov	x1, x0
	adrp	x0, str156
	add	x0, x0, #:lo12:str156
	bl	__rt_str_concat
	b	.L47
.L46:
	adrp	x0, str155
	add	x0, x0, #:lo12:str155
.L47:
	ldp	x29, x30, [sp], 16
	ret
.type utilities_logger_repeat_spaces, @function
.size utilities_logger_repeat_spaces, .-utilities_logger_repeat_spaces
/* end function utilities_logger_repeat_spaces */

.text
.balign 16
utilities_logger_format_duration:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	cmp	x0, #1000
	cset	x1, lt
	cmp	x1, #1
	beq	.L52
	mov	x1, #16960
	movk	x1, #0xf, lsl #16
	cmp	x0, x1
	cset	x1, lt
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L51
	bl	utilities_logger_format_seconds
	str	x0, [x19]
	b	.L53
.L51:
	bl	utilities_logger_format_ms
	str	x0, [x19]
	b	.L53
.L52:
	bl	donna_int_to_string
	adrp	x1, str168
	add	x1, x1, #:lo12:str168
	bl	__rt_str_concat
.L53:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_format_duration, @function
.size utilities_logger_format_duration, .-utilities_logger_format_duration
/* end function utilities_logger_format_duration */

.text
.balign 16
utilities_logger_format_ms:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, #1000
	sdiv	x19, x0, x1
	mov	x1, #1000
	sdiv	x17, x0, x1
	msub	x0, x17, x1, x0
	mov	x1, #10
	sdiv	x0, x0, x1
	cmp	x0, #10
	cset	x1, lt
	cmp	x1, #1
	beq	.L57
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	b	.L58
.L57:
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str189
	add	x0, x0, #:lo12:str189
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
.L58:
	mov	x19, x1
	bl	donna_int_to_string
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str195
	add	x1, x1, #:lo12:str195
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	adrp	x1, str198
	add	x1, x1, #:lo12:str198
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_format_ms, @function
.size utilities_logger_format_ms, .-utilities_logger_format_ms
/* end function utilities_logger_format_ms */

.text
.balign 16
utilities_logger_format_seconds:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, #16960
	movk	x1, #0xf, lsl #16
	sdiv	x19, x0, x1
	mov	x1, #16960
	movk	x1, #0xf, lsl #16
	sdiv	x17, x0, x1
	msub	x0, x17, x1, x0
	mov	x1, #10000
	sdiv	x0, x0, x1
	cmp	x0, #10
	cset	x1, lt
	cmp	x1, #1
	beq	.L63
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	b	.L64
.L63:
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str209
	add	x0, x0, #:lo12:str209
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
.L64:
	mov	x19, x1
	bl	donna_int_to_string
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str215
	add	x1, x1, #:lo12:str215
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	adrp	x1, str218
	add	x1, x1, #:lo12:str218
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_logger_format_seconds, @function
.size utilities_logger_format_seconds, .-utilities_logger_format_seconds
/* end function utilities_logger_format_seconds */

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
