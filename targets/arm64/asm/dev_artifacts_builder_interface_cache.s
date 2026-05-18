.data
.balign 8
str1:
	.ascii ".iface"
	.byte 0
/* end data */

.data
.balign 8
str20:
	.ascii "donna-iface-v1"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str32:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str41:
	.ascii "B|"
	.byte 0
/* end data */

.data
.balign 8
str43:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str47:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str58:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str73:
	.ascii "C|"
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str78:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str82:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str86:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str97:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str124:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii "I"
	.byte 0
/* end data */

.data
.balign 8
str140:
	.ascii "F"
	.byte 0
/* end data */

.data
.balign 8
str145:
	.ascii "S"
	.byte 0
/* end data */

.data
.balign 8
str150:
	.ascii "B"
	.byte 0
/* end data */

.data
.balign 8
str155:
	.ascii "N"
	.byte 0
/* end data */

.data
.balign 8
str162:
	.ascii "L:"
	.byte 0
/* end data */

.data
.balign 8
str177:
	.ascii "U:0"
	.byte 0
/* end data */

.data
.balign 8
str178:
	.ascii "U:"
	.byte 0
/* end data */

.data
.balign 8
str182:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str195:
	.ascii "R:"
	.byte 0
/* end data */

.data
.balign 8
str199:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str221:
	.ascii "M:"
	.byte 0
/* end data */

.data
.balign 8
str223:
	.ascii ":0"
	.byte 0
/* end data */

.data
.balign 8
str225:
	.ascii "M:"
	.byte 0
/* end data */

.data
.balign 8
str227:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str232:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str239:
	.ascii "V:"
	.byte 0
/* end data */

.data
.balign 8
str249:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str276:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str281:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str295:
	.ascii "donna-iface-v1"
	.byte 0
/* end data */

.data
.balign 8
str332:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
str346:
	.ascii "B"
	.byte 0
/* end data */

.data
.balign 8
str418:
	.ascii "C"
	.byte 0
/* end data */

.data
.balign 8
str547:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str588:
	.ascii "I"
	.byte 0
/* end data */

.data
.balign 8
str614:
	.ascii "F"
	.byte 0
/* end data */

.data
.balign 8
str640:
	.ascii "S"
	.byte 0
/* end data */

.data
.balign 8
str666:
	.ascii "B"
	.byte 0
/* end data */

.data
.balign 8
str692:
	.ascii "N"
	.byte 0
/* end data */

.data
.balign 8
str718:
	.ascii "V"
	.byte 0
/* end data */

.data
.balign 8
str772:
	.ascii "L"
	.byte 0
/* end data */

.data
.balign 8
str814:
	.ascii "U"
	.byte 0
/* end data */

.data
.balign 8
str882:
	.ascii "R"
	.byte 0
/* end data */

.data
.balign 8
str965:
	.ascii "M"
	.byte 0
/* end data */

.text
.balign 16
.globl builder_interface_cache_path_for
builder_interface_cache_path_for:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_files_drop_extension
	adrp	x1, str1
	add	x1, x1, #:lo12:str1
	bl	__rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
.type builder_interface_cache_path_for, @function
.size builder_interface_cache_path_for, .-builder_interface_cache_path_for
/* end function builder_interface_cache_path_for */

.text
.balign 16
.globl builder_interface_cache_write
builder_interface_cache_write:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	bl	builder_interface_cache_encode
	mov	x1, x0
	mov	x0, x19
	bl	donna_files_write
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_interface_cache_write, @function
.size builder_interface_cache_write, .-builder_interface_cache_write
/* end function builder_interface_cache_write */

.text
.balign 16
.globl builder_interface_cache_read
builder_interface_cache_read:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	donna_files_exists
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L6
	bl	donna_files_read
	bl	builder_interface_cache_decode
	b	.L7
.L6:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L7:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_interface_cache_read, @function
.size builder_interface_cache_read, .-builder_interface_cache_read
/* end function builder_interface_cache_read */

.text
.balign 16
builder_interface_cache_encode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	builder_interface_cache_encode_bindings
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str20
	add	x0, x0, #:lo12:str20
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_interface_cache_encode_ctors
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_interface_cache_encode, @function
.size builder_interface_cache_encode, .-builder_interface_cache_encode
/* end function builder_interface_cache_encode */

.text
.balign 16
builder_interface_cache_encode_bindings:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L12
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x1, [x0]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, str41
	add	x0, x0, #:lo12:str41
	bl	__rt_str_concat
	adrp	x1, str43
	add	x1, x1, #:lo12:str43
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	builder_interface_cache_encode_type
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	adrp	x1, str47
	add	x1, x1, #:lo12:str47
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_interface_cache_encode_bindings
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L13
.L12:
	adrp	x0, str32
	add	x0, x0, #:lo12:str32
.L13:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type builder_interface_cache_encode_bindings, @function
.size builder_interface_cache_encode_bindings, .-builder_interface_cache_encode_bindings
/* end function builder_interface_cache_encode_bindings */

.text
.balign 16
builder_interface_cache_encode_ctors:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L16
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x1, [x0]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x22, [x0]
	mov	x2, #8
	add	x2, x0, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x21, x0
	adrp	x0, str73
	add	x0, x0, #:lo12:str73
	bl	__rt_str_concat
	mov	x1, x22
	mov	x22, x1
	adrp	x1, str75
	add	x1, x1, #:lo12:str75
	bl	__rt_str_concat
	mov	x1, x22
	bl	__rt_str_concat
	adrp	x1, str78
	add	x1, x1, #:lo12:str78
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	bl	__rt_str_concat
	adrp	x1, str82
	add	x1, x1, #:lo12:str82
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	builder_interface_cache_encode_type_list
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	adrp	x1, str86
	add	x1, x1, #:lo12:str86
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_interface_cache_encode_ctors
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L17
.L16:
	adrp	x0, str58
	add	x0, x0, #:lo12:str58
.L17:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type builder_interface_cache_encode_ctors, @function
.size builder_interface_cache_encode_ctors, .-builder_interface_cache_encode_ctors
/* end function builder_interface_cache_encode_ctors */

.text
.balign 16
builder_interface_cache_encode_type_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L26
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L22
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L23
.L22:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L23:
	cmp	w1, #0
	bne	.L25
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	builder_interface_cache_encode_type
	adrp	x1, str124
	add	x1, x1, #:lo12:str124
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_interface_cache_encode_type_list
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L27
.L25:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	builder_interface_cache_encode_type
	b	.L27
.L26:
	adrp	x0, str97
	add	x0, x0, #:lo12:str97
.L27:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type builder_interface_cache_encode_type_list, @function
.size builder_interface_cache_encode_type_list, .-builder_interface_cache_encode_type_list
/* end function builder_interface_cache_encode_type_list */

.text
.balign 16
builder_interface_cache_encode_type:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L51
	cmp	x1, #1
	beq	.L50
	cmp	x1, #2
	beq	.L49
	cmp	x1, #3
	beq	.L48
	cmp	x1, #4
	beq	.L47
	cmp	x1, #5
	beq	.L46
	cmp	x1, #6
	beq	.L42
	cmp	x1, #7
	beq	.L41
	cmp	x1, #8
	beq	.L38
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_int_to_string
	mov	x1, x0
	adrp	x0, str239
	add	x0, x0, #:lo12:str239
	bl	__rt_str_concat
	b	.L52
.L38:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x19, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x20, x0
	bl	donna_list_is_empty
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x0, #1
	beq	.L40
	adrp	x0, str225
	add	x0, x0, #:lo12:str225
	bl	__rt_str_concat
	adrp	x1, str227
	add	x1, x1, #:lo12:str227
	bl	__rt_str_concat
	mov	x21, x0
	mov	x0, x20
	bl	donna_list_length
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	bl	__rt_str_concat
	adrp	x1, str232
	add	x1, x1, #:lo12:str232
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	builder_interface_cache_encode_type_tokens
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L52
.L40:
	adrp	x0, str221
	add	x0, x0, #:lo12:str221
	bl	__rt_str_concat
	adrp	x1, str223
	add	x1, x1, #:lo12:str223
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L52
.L41:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	donna_list_length
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str195
	add	x0, x0, #:lo12:str195
	bl	__rt_str_concat
	adrp	x1, str199
	add	x1, x1, #:lo12:str199
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x3, x1, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	str	x2, [x3]
	bl	donna_list_append
	bl	builder_interface_cache_encode_type_tokens
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L52
.L42:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x19, x0
	bl	donna_list_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L44
	mov	x20, x0
	bl	donna_list_length
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str178
	add	x0, x0, #:lo12:str178
	bl	__rt_str_concat
	adrp	x1, str182
	add	x1, x1, #:lo12:str182
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	builder_interface_cache_encode_type_tokens
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L52
.L44:
	adrp	x0, str177
	add	x0, x0, #:lo12:str177
	str	x0, [x19]
	adrp	x0, str177
	add	x0, x0, #:lo12:str177
	b	.L52
.L46:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	builder_interface_cache_encode_type
	mov	x1, x0
	adrp	x0, str162
	add	x0, x0, #:lo12:str162
	bl	__rt_str_concat
	b	.L52
.L47:
	adrp	x0, str155
	add	x0, x0, #:lo12:str155
	b	.L52
.L48:
	adrp	x0, str150
	add	x0, x0, #:lo12:str150
	b	.L52
.L49:
	adrp	x0, str145
	add	x0, x0, #:lo12:str145
	b	.L52
.L50:
	adrp	x0, str140
	add	x0, x0, #:lo12:str140
	b	.L52
.L51:
	adrp	x0, str135
	add	x0, x0, #:lo12:str135
.L52:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_interface_cache_encode_type, @function
.size builder_interface_cache_encode_type, .-builder_interface_cache_encode_type
/* end function builder_interface_cache_encode_type */

.text
.balign 16
builder_interface_cache_encode_type_tokens:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L61
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L57
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L58
.L57:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L58:
	cmp	w1, #0
	bne	.L60
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	builder_interface_cache_encode_type
	adrp	x1, str276
	add	x1, x1, #:lo12:str276
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_interface_cache_encode_type_tokens
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L62
.L60:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	builder_interface_cache_encode_type
	b	.L62
.L61:
	adrp	x0, str249
	add	x0, x0, #:lo12:str249
.L62:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type builder_interface_cache_encode_type_tokens, @function
.size builder_interface_cache_encode_type_tokens, .-builder_interface_cache_encode_type_tokens
/* end function builder_interface_cache_encode_type_tokens */

.text
.balign 16
builder_interface_cache_decode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, str281
	add	x1, x1, #:lo12:str281
	bl	donna_string_split
	mov	x19, x0
	ldr	x0, [x19]
	cmp	x0, #1
	beq	.L65
	mov	x0, #0
	b	.L66
.L65:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	adrp	x1, str295
	add	x1, x1, #:lo12:str295
	bl	strcmp
	cmp	x0, #0
	cset	x0, eq
	mov	x1, #1
	and	x0, x0, x1
.L66:
	cmp	w0, #0
	bne	.L68
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L69
.L68:
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_interface_cache_decode_lines
.L69:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_interface_cache_decode, @function
.size builder_interface_cache_decode, .-builder_interface_cache_decode
/* end function builder_interface_cache_decode */

.text
.balign 16
builder_interface_cache_decode_lines:
	hint	#34
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [x29, 104]
	str	x20, [x29, 96]
	str	x21, [x29, 88]
	str	x22, [x29, 80]
	str	x23, [x29, 72]
	str	x24, [x29, 64]
	str	x25, [x29, 56]
	str	x26, [x29, 48]
	mov	x23, x1
	mov	x1, x0
	mov	x0, x2
	mov	x24, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L123
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L121
	adrp	x1, str332
	add	x1, x1, #:lo12:str332
	bl	donna_string_split
	mov	x21, x0
	mov	x0, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x21]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #1
	beq	.L75
	mov	x1, #0
	str	x1, [x22]
	mov	x1, #0
	b	.L84
.L75:
	mov	x26, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x25, [x1]
	adrp	x1, str346
	add	x1, x1, #:lo12:str346
	bl	strcmp
	mov	x1, x0
	mov	x0, x26
	ldr	x2, [x25]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L78
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L83
.L78:
	mov	x2, #16
	add	x2, x25, x2
	ldr	x2, [x2]
	ldr	x5, [x2]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	.L81
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	.L82
.L81:
	mov	x5, #16
	add	x2, x2, x5
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
.L82:
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L83:
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x2
	str	x1, [x22]
.L84:
	cmp	w1, #0
	bne	.L114
	ldr	x1, [x21]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x25, sp
	cmp	x1, #1
	beq	.L88
	mov	x1, #0
	str	x1, [x25]
	mov	x22, x0
	mov	x0, #0
	b	.L102
.L88:
	mov	x26, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x22, [x1]
	adrp	x1, str418
	add	x1, x1, #:lo12:str418
	bl	strcmp
	mov	x2, x0
	mov	x0, x26
	ldr	x1, [x22]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x1, #1
	beq	.L91
	mov	x1, #0
	str	x1, [x3]
	mov	x1, #0
	b	.L101
.L91:
	mov	x1, #16
	add	x1, x22, x1
	ldr	x1, [x1]
	ldr	x5, [x1]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	.L94
	mov	x1, #0
	str	x1, [x4]
	mov	x1, #0
	b	.L100
.L94:
	mov	x5, #16
	add	x1, x1, x5
	ldr	x1, [x1]
	ldr	x1, [x1]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x1, #1
	beq	.L97
	mov	x1, #0
	str	x1, [x5]
	mov	x1, #0
	b	.L99
.L97:
	mov	x1, #1
	str	x1, [x5]
	mov	x1, #1
.L99:
	mov	x5, #1
	and	x1, x1, x5
	str	x1, [x4]
.L100:
	mov	x4, #1
	and	x1, x1, x4
	str	x1, [x3]
.L101:
	cmp	x2, #0
	mov	x22, x0
	cset	x0, eq
	and	x0, x0, x1
	str	x0, [x25]
.L102:
	cmp	w0, #0
	bne	.L105
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x20]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L120
.L105:
	mov	x0, #16
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	str	x1, [x29, 16]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x25, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	builder_interface_cache_parse_int
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L111
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	str	x1, [x29, 24]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_interface_cache_parse_type_strings
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L108
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	str	x2, [x29, 32]
	mov	x26, x0
	mov	x0, #24
	bl	malloc
	mov	x17, x0
	mov	x0, x26
	mov	x26, x17
	ldr	x2, [x29, 32]
	ldr	x1, [x29, 24]
	str	x25, [x26]
	mov	x3, #8
	add	x3, x26, x3
	str	x2, [x3]
	mov	x2, #16
	add	x2, x26, x2
	str	x1, [x2]
	mov	x25, x0
	mov	x0, #16
	bl	malloc
	mov	x17, x0
	mov	x0, x25
	mov	x25, x17
	ldr	x1, [x29, 16]
	str	x1, [x25]
	mov	x1, #8
	add	x1, x25, x1
	str	x26, [x1]
	mov	x26, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x0
	mov	x0, x26
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #8
	add	x1, x2, x1
	str	x25, [x1]
	mov	x1, #16
	add	x1, x2, x1
	str	x24, [x1]
	mov	x1, x23
	bl	builder_interface_cache_decode_lines
	str	x0, [x22]
	b	.L110
.L108:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x22]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L110:
	str	x0, [x21]
	b	.L113
.L111:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x21]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L113:
	str	x0, [x20]
	b	.L120
.L114:
	mov	x22, x24
	mov	x24, x21
	mov	x21, x0
	mov	x0, #16
	add	x0, x24, x0
	ldr	x0, [x0]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x26, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	builder_interface_cache_decode_type
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L117
	mov	x2, #8
	add	x1, x1, x2
	ldr	x25, [x1]
	mov	x24, x0
	mov	x0, #16
	bl	malloc
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	str	x26, [x24]
	mov	x1, #8
	add	x1, x24, x1
	str	x25, [x1]
	mov	x25, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x25
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x24, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x23, [x2]
	mov	x2, x22
	bl	builder_interface_cache_decode_lines
	str	x0, [x21]
	b	.L119
.L117:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x21]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L119:
	str	x0, [x20]
.L120:
	str	x0, [x19]
	b	.L125
.L121:
	mov	x0, x20
	mov	x21, x24
	mov	x20, x23
	mov	x2, x21
	mov	x1, x20
	bl	builder_interface_cache_decode_lines
	str	x0, [x19]
	b	.L125
.L123:
	mov	x19, x24
	mov	x0, x23
	bl	donna_list_reverse
	mov	x21, x0
	mov	x0, x19
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L125:
	ldr	x19, [x29, 104]
	ldr	x20, [x29, 96]
	ldr	x21, [x29, 88]
	ldr	x22, [x29, 80]
	ldr	x23, [x29, 72]
	ldr	x24, [x29, 64]
	ldr	x25, [x29, 56]
	ldr	x26, [x29, 48]
	mov sp, x29
	ldp	x29, x30, [sp], 112
	ret
.type builder_interface_cache_decode_lines, @function
.size builder_interface_cache_decode_lines, .-builder_interface_cache_decode_lines
/* end function builder_interface_cache_decode_lines */

.text
.balign 16
builder_interface_cache_parse_type_strings:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x21, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L135
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L133
	bl	builder_interface_cache_decode_type
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L130
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x21, [x2]
	bl	builder_interface_cache_parse_type_strings
	str	x0, [x20]
	b	.L132
.L130:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x20]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L132:
	str	x0, [x19]
	b	.L137
.L133:
	mov	x0, x20
	mov	x20, x21
	mov	x1, x20
	bl	builder_interface_cache_parse_type_strings
	str	x0, [x19]
	b	.L137
.L135:
	mov	x0, x21
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L137:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_interface_cache_parse_type_strings, @function
.size builder_interface_cache_parse_type_strings, .-builder_interface_cache_parse_type_strings
/* end function builder_interface_cache_parse_type_strings */

.text
.balign 16
builder_interface_cache_decode_type:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	adrp	x1, str547
	add	x1, x1, #:lo12:str547
	bl	donna_string_split
	bl	builder_interface_cache_decode_type_tokens
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L143
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x20, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L142
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x19]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L144
.L142:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L144
.L143:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L144:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type builder_interface_cache_decode_type, @function
.size builder_interface_cache_decode_type, .-builder_interface_cache_decode_type
/* end function builder_interface_cache_decode_type */

.text
.balign 16
builder_interface_cache_decode_type_tokens:
	hint	#34
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [x29, 72]
	str	x20, [x29, 64]
	str	x21, [x29, 56]
	str	x22, [x29, 48]
	str	x23, [x29, 40]
	str	x24, [x29, 32]
	str	x25, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L262
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L149
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L150
.L149:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, str588
	add	x1, x1, #:lo12:str588
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L150:
	cmp	w1, #0
	bne	.L261
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L154
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L155
.L154:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, str614
	add	x1, x1, #:lo12:str614
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L155:
	cmp	w1, #0
	bne	.L260
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L159
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L160
.L159:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, str640
	add	x1, x1, #:lo12:str640
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L160:
	cmp	w1, #0
	bne	.L259
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L164
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L165
.L164:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, str666
	add	x1, x1, #:lo12:str666
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L165:
	cmp	w1, #0
	bne	.L258
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L169
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L170
.L169:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, str692
	add	x1, x1, #:lo12:str692
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L170:
	cmp	w1, #0
	bne	.L257
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L174
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L180
.L174:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x20, [x1]
	adrp	x1, str718
	add	x1, x1, #:lo12:str718
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	ldr	x2, [x20]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L177
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L179
.L177:
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #1
.L179:
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x2
	str	x1, [x19]
.L180:
	cmp	w1, #0
	bne	.L253
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L184
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L185
.L184:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, str772
	add	x1, x1, #:lo12:str772
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L185:
	cmp	w1, #0
	bne	.L249
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L189
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L195
.L189:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x20, [x1]
	adrp	x1, str814
	add	x1, x1, #:lo12:str814
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	ldr	x2, [x20]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L192
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L194
.L192:
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #1
.L194:
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x2
	str	x1, [x19]
.L195:
	cmp	w1, #0
	bne	.L241
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L199
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L205
.L199:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x20, [x1]
	adrp	x1, str882
	add	x1, x1, #:lo12:str882
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	ldr	x2, [x20]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L202
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L204
.L202:
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #1
.L204:
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x2
	str	x1, [x19]
.L205:
	cmp	w1, #0
	bne	.L229
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L209
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L219
.L209:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x20, [x1]
	adrp	x1, str965
	add	x1, x1, #:lo12:str965
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	ldr	x2, [x20]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L212
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L218
.L212:
	mov	x2, #16
	add	x2, x20, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x2, #1
	beq	.L215
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	.L217
.L215:
	mov	x2, #1
	str	x2, [x4]
	mov	x2, #1
.L217:
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L218:
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x2
	str	x1, [x19]
.L219:
	cmp	w1, #0
	bne	.L221
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L263
.L221:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	builder_interface_cache_parse_int
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L227
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	builder_interface_cache_decode_type_count
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L224
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x21, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #24
	bl	malloc
	mov	x23, x0
	mov	x0, #8
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L226
.L224:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x20]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L226:
	str	x0, [x19]
	b	.L263
.L227:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x19]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L263
.L229:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	builder_interface_cache_parse_int
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L239
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	builder_interface_cache_decode_type_count
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L236
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x25, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	builder_interface_cache_decode_type_tokens
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L233
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x22, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x23, [x0]
	mov	x0, #24
	bl	malloc
	mov	x24, x0
	mov	x0, #7
	str	x0, [x24]
	mov	x0, #8
	add	x0, x24, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x24, x0
	str	x22, [x0]
	mov	x0, #16
	bl	malloc
	mov	x22, x0
	str	x24, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	.L235
.L233:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x21]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L235:
	str	x0, [x20]
	b	.L238
.L236:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x20]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L238:
	str	x0, [x19]
	b	.L263
.L239:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x19]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L263
.L241:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	builder_interface_cache_parse_int
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L247
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	builder_interface_cache_decode_type_count
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L244
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x21, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	bl	malloc
	mov	x23, x0
	mov	x0, #6
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L246
.L244:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x20]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L246:
	str	x0, [x19]
	b	.L263
.L247:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x19]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L263
.L249:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	builder_interface_cache_decode_type_tokens
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L251
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x20, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x22, x0
	mov	x0, #5
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L263
.L251:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x19]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L263
.L253:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	builder_interface_cache_parse_int
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L255
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x22, x0
	mov	x0, #9
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L263
.L255:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x19]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L263
.L257:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x19, x0
	adrp	x0, compiler_typesystem_types_TNil
	add	x0, x0, #:lo12:compiler_typesystem_types_TNil
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L263
.L258:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x19, x0
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L263
.L259:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x19, x0
	adrp	x0, compiler_typesystem_types_TString
	add	x0, x0, #:lo12:compiler_typesystem_types_TString
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L263
.L260:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x19, x0
	adrp	x0, compiler_typesystem_types_TFloat
	add	x0, x0, #:lo12:compiler_typesystem_types_TFloat
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L263
.L261:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x19, x0
	adrp	x0, compiler_typesystem_types_TInt
	add	x0, x0, #:lo12:compiler_typesystem_types_TInt
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L263
.L262:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L263:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 80
	ret
.type builder_interface_cache_decode_type_tokens, @function
.size builder_interface_cache_decode_type_tokens, .-builder_interface_cache_decode_type_tokens
/* end function builder_interface_cache_decode_type_tokens */

.text
.balign 16
builder_interface_cache_decode_type_count:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x20, x2
	cmp	x0, #0
	cset	x2, le
	cmp	x2, #1
	beq	.L269
	mov	x19, x0
	mov	x0, x1
	bl	builder_interface_cache_decode_type_tokens
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L267
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x23, x1
	mov	x1, #1
	sub	x0, x0, x1
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x21, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x20, [x3]
	bl	builder_interface_cache_decode_type_count
	str	x0, [x19]
	b	.L271
.L267:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x19]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L271
.L269:
	mov	x0, x20
	mov	x19, x1
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x19
	mov	x19, x0
	str	x20, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x1, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L271:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_interface_cache_decode_type_count, @function
.size builder_interface_cache_decode_type_count, .-builder_interface_cache_decode_type_count
/* end function builder_interface_cache_decode_type_count */

.text
.balign 16
builder_interface_cache_parse_int:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_int_parse
	ldp	x29, x30, [sp], 16
	ret
.type builder_interface_cache_parse_int, @function
.size builder_interface_cache_parse_int, .-builder_interface_cache_parse_int
/* end function builder_interface_cache_parse_int */

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
