.data
.balign 8
_str1:
	.ascii ".iface"
	.byte 0
/* end data */

.data
.balign 8
_str20:
	.ascii "donna-iface-v1"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str32:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str41:
	.ascii "B|"
	.byte 0
/* end data */

.data
.balign 8
_str43:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
_str47:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str58:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str73:
	.ascii "C|"
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
_str78:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
_str82:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
_str86:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str97:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str124:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.ascii "I"
	.byte 0
/* end data */

.data
.balign 8
_str140:
	.ascii "F"
	.byte 0
/* end data */

.data
.balign 8
_str145:
	.ascii "S"
	.byte 0
/* end data */

.data
.balign 8
_str150:
	.ascii "B"
	.byte 0
/* end data */

.data
.balign 8
_str155:
	.ascii "N"
	.byte 0
/* end data */

.data
.balign 8
_str162:
	.ascii "L:"
	.byte 0
/* end data */

.data
.balign 8
_str177:
	.ascii "U:0"
	.byte 0
/* end data */

.data
.balign 8
_str178:
	.ascii "U:"
	.byte 0
/* end data */

.data
.balign 8
_str182:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str195:
	.ascii "R:"
	.byte 0
/* end data */

.data
.balign 8
_str199:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str221:
	.ascii "M:"
	.byte 0
/* end data */

.data
.balign 8
_str223:
	.ascii ":0"
	.byte 0
/* end data */

.data
.balign 8
_str225:
	.ascii "M:"
	.byte 0
/* end data */

.data
.balign 8
_str227:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str232:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str239:
	.ascii "V:"
	.byte 0
/* end data */

.data
.balign 8
_str249:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str276:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str281:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str295:
	.ascii "donna-iface-v1"
	.byte 0
/* end data */

.data
.balign 8
_str332:
	.ascii "|"
	.byte 0
/* end data */

.data
.balign 8
_str346:
	.ascii "B"
	.byte 0
/* end data */

.data
.balign 8
_str418:
	.ascii "C"
	.byte 0
/* end data */

.data
.balign 8
_str547:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str588:
	.ascii "I"
	.byte 0
/* end data */

.data
.balign 8
_str614:
	.ascii "F"
	.byte 0
/* end data */

.data
.balign 8
_str640:
	.ascii "S"
	.byte 0
/* end data */

.data
.balign 8
_str666:
	.ascii "B"
	.byte 0
/* end data */

.data
.balign 8
_str692:
	.ascii "N"
	.byte 0
/* end data */

.data
.balign 8
_str718:
	.ascii "V"
	.byte 0
/* end data */

.data
.balign 8
_str772:
	.ascii "L"
	.byte 0
/* end data */

.data
.balign 8
_str814:
	.ascii "U"
	.byte 0
/* end data */

.data
.balign 8
_str882:
	.ascii "R"
	.byte 0
/* end data */

.data
.balign 8
_str965:
	.ascii "M"
	.byte 0
/* end data */

.text
.balign 4
.globl _builder_interface_cache_path_for
_builder_interface_cache_path_for:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_donna_files_drop_extension
	adrp	x1, _str1@page
	add	x1, x1, _str1@pageoff
	bl	___rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_interface_cache_path_for */

.text
.balign 4
.globl _builder_interface_cache_write
_builder_interface_cache_write:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	bl	_builder_interface_cache_encode
	mov	x1, x0
	mov	x0, x19
	bl	_donna_files_write
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_interface_cache_write */

.text
.balign 4
.globl _builder_interface_cache_read
_builder_interface_cache_read:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	_donna_files_exists
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L6
	bl	_donna_files_read
	bl	_builder_interface_cache_decode
	b	L7
L6:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L7:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_interface_cache_read */

.text
.balign 4
_builder_interface_cache_encode:
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
	bl	_builder_interface_cache_encode_bindings
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, _str20@page
	add	x0, x0, _str20@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_interface_cache_encode_ctors
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_interface_cache_encode */

.text
.balign 4
_builder_interface_cache_encode_bindings:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L12
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
	adrp	x0, _str41@page
	add	x0, x0, _str41@pageoff
	bl	___rt_str_concat
	adrp	x1, _str43@page
	add	x1, x1, _str43@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_builder_interface_cache_encode_type
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	adrp	x1, _str47@page
	add	x1, x1, _str47@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_interface_cache_encode_bindings
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L13
L12:
	adrp	x0, _str32@page
	add	x0, x0, _str32@pageoff
L13:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_interface_cache_encode_bindings */

.text
.balign 4
_builder_interface_cache_encode_ctors:
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
	beq	L16
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
	adrp	x0, _str73@page
	add	x0, x0, _str73@pageoff
	bl	___rt_str_concat
	mov	x1, x22
	mov	x22, x1
	adrp	x1, _str75@page
	add	x1, x1, _str75@pageoff
	bl	___rt_str_concat
	mov	x1, x22
	bl	___rt_str_concat
	adrp	x1, _str78@page
	add	x1, x1, _str78@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	bl	___rt_str_concat
	adrp	x1, _str82@page
	add	x1, x1, _str82@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_builder_interface_cache_encode_type_list
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	adrp	x1, _str86@page
	add	x1, x1, _str86@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_interface_cache_encode_ctors
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L17
L16:
	adrp	x0, _str58@page
	add	x0, x0, _str58@pageoff
L17:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_interface_cache_encode_ctors */

.text
.balign 4
_builder_interface_cache_encode_type_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L26
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L22
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L23
L22:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L23:
	cmp	w1, #0
	bne	L25
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_builder_interface_cache_encode_type
	adrp	x1, _str124@page
	add	x1, x1, _str124@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_interface_cache_encode_type_list
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L27
L25:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_builder_interface_cache_encode_type
	b	L27
L26:
	adrp	x0, _str97@page
	add	x0, x0, _str97@pageoff
L27:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_interface_cache_encode_type_list */

.text
.balign 4
_builder_interface_cache_encode_type:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L51
	cmp	x1, #1
	beq	L50
	cmp	x1, #2
	beq	L49
	cmp	x1, #3
	beq	L48
	cmp	x1, #4
	beq	L47
	cmp	x1, #5
	beq	L46
	cmp	x1, #6
	beq	L42
	cmp	x1, #7
	beq	L41
	cmp	x1, #8
	beq	L38
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_int_to_string
	mov	x1, x0
	adrp	x0, _str239@page
	add	x0, x0, _str239@pageoff
	bl	___rt_str_concat
	b	L52
L38:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x19, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x20, x0
	bl	_donna_list_is_empty
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x0, #1
	beq	L40
	adrp	x0, _str225@page
	add	x0, x0, _str225@pageoff
	bl	___rt_str_concat
	adrp	x1, _str227@page
	add	x1, x1, _str227@pageoff
	bl	___rt_str_concat
	mov	x21, x0
	mov	x0, x20
	bl	_donna_list_length
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	bl	___rt_str_concat
	adrp	x1, _str232@page
	add	x1, x1, _str232@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_builder_interface_cache_encode_type_tokens
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	str	x0, [x19]
	b	L52
L40:
	adrp	x0, _str221@page
	add	x0, x0, _str221@pageoff
	bl	___rt_str_concat
	adrp	x1, _str223@page
	add	x1, x1, _str223@pageoff
	bl	___rt_str_concat
	str	x0, [x19]
	b	L52
L41:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	_donna_list_length
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, _str195@page
	add	x0, x0, _str195@pageoff
	bl	___rt_str_concat
	adrp	x1, _str199@page
	add	x1, x1, _str199@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x3, x1, x2
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	str	x2, [x3]
	bl	_donna_list_append
	bl	_builder_interface_cache_encode_type_tokens
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L52
L42:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x19, x0
	bl	_donna_list_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L44
	mov	x20, x0
	bl	_donna_list_length
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _str178@page
	add	x0, x0, _str178@pageoff
	bl	___rt_str_concat
	adrp	x1, _str182@page
	add	x1, x1, _str182@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_builder_interface_cache_encode_type_tokens
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	str	x0, [x19]
	b	L52
L44:
	adrp	x0, _str177@page
	add	x0, x0, _str177@pageoff
	str	x0, [x19]
	adrp	x0, _str177@page
	add	x0, x0, _str177@pageoff
	b	L52
L46:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_builder_interface_cache_encode_type
	mov	x1, x0
	adrp	x0, _str162@page
	add	x0, x0, _str162@pageoff
	bl	___rt_str_concat
	b	L52
L47:
	adrp	x0, _str155@page
	add	x0, x0, _str155@pageoff
	b	L52
L48:
	adrp	x0, _str150@page
	add	x0, x0, _str150@pageoff
	b	L52
L49:
	adrp	x0, _str145@page
	add	x0, x0, _str145@pageoff
	b	L52
L50:
	adrp	x0, _str140@page
	add	x0, x0, _str140@pageoff
	b	L52
L51:
	adrp	x0, _str135@page
	add	x0, x0, _str135@pageoff
L52:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_interface_cache_encode_type */

.text
.balign 4
_builder_interface_cache_encode_type_tokens:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L61
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L57
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L58
L57:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L58:
	cmp	w1, #0
	bne	L60
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_builder_interface_cache_encode_type
	adrp	x1, _str276@page
	add	x1, x1, _str276@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_interface_cache_encode_type_tokens
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L62
L60:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_builder_interface_cache_encode_type
	b	L62
L61:
	adrp	x0, _str249@page
	add	x0, x0, _str249@pageoff
L62:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_interface_cache_encode_type_tokens */

.text
.balign 4
_builder_interface_cache_decode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, _str281@page
	add	x1, x1, _str281@pageoff
	bl	_donna_string_split
	mov	x19, x0
	ldr	x0, [x19]
	cmp	x0, #1
	beq	L65
	mov	x0, #0
	b	L66
L65:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	adrp	x1, _str295@page
	add	x1, x1, _str295@pageoff
	bl	_strcmp
	cmp	x0, #0
	cset	x0, eq
	mov	x1, #1
	and	x0, x0, x1
L66:
	cmp	w0, #0
	bne	L68
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L69
L68:
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_interface_cache_decode_lines
L69:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_interface_cache_decode */

.text
.balign 4
_builder_interface_cache_decode_lines:
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
	beq	L123
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L121
	adrp	x1, _str332@page
	add	x1, x1, _str332@pageoff
	bl	_donna_string_split
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
	beq	L75
	mov	x1, #0
	str	x1, [x22]
	mov	x1, #0
	b	L84
L75:
	mov	x26, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x25, [x1]
	adrp	x1, _str346@page
	add	x1, x1, _str346@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x26
	ldr	x2, [x25]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	L78
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L83
L78:
	mov	x2, #16
	add	x2, x25, x2
	ldr	x2, [x2]
	ldr	x5, [x2]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	L81
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L82
L81:
	mov	x5, #16
	add	x2, x2, x5
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L82:
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L83:
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x2
	str	x1, [x22]
L84:
	cmp	w1, #0
	bne	L114
	ldr	x1, [x21]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x25, sp
	cmp	x1, #1
	beq	L88
	mov	x1, #0
	str	x1, [x25]
	mov	x22, x0
	mov	x0, #0
	b	L102
L88:
	mov	x26, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x22, [x1]
	adrp	x1, _str418@page
	add	x1, x1, _str418@pageoff
	bl	_strcmp
	mov	x2, x0
	mov	x0, x26
	ldr	x1, [x22]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x1, #1
	beq	L91
	mov	x1, #0
	str	x1, [x3]
	mov	x1, #0
	b	L101
L91:
	mov	x1, #16
	add	x1, x22, x1
	ldr	x1, [x1]
	ldr	x5, [x1]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	L94
	mov	x1, #0
	str	x1, [x4]
	mov	x1, #0
	b	L100
L94:
	mov	x5, #16
	add	x1, x1, x5
	ldr	x1, [x1]
	ldr	x1, [x1]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x1, #1
	beq	L97
	mov	x1, #0
	str	x1, [x5]
	mov	x1, #0
	b	L99
L97:
	mov	x1, #1
	str	x1, [x5]
	mov	x1, #1
L99:
	mov	x5, #1
	and	x1, x1, x5
	str	x1, [x4]
L100:
	mov	x4, #1
	and	x1, x1, x4
	str	x1, [x3]
L101:
	cmp	x2, #0
	mov	x22, x0
	cset	x0, eq
	and	x0, x0, x1
	str	x0, [x25]
L102:
	cmp	w0, #0
	bne	L105
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x20]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L120
L105:
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
	bl	_builder_interface_cache_parse_int
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L111
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	str	x1, [x29, 24]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_interface_cache_parse_type_strings
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L108
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	str	x2, [x29, 32]
	mov	x26, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
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
	bl	_malloc
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
	bl	_builder_interface_cache_decode_lines
	str	x0, [x22]
	b	L110
L108:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x22]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L110:
	str	x0, [x21]
	b	L113
L111:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x21]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L113:
	str	x0, [x20]
	b	L120
L114:
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
	bl	_builder_interface_cache_decode_type
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L117
	mov	x2, #8
	add	x1, x1, x2
	ldr	x25, [x1]
	mov	x24, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	str	x26, [x24]
	mov	x1, #8
	add	x1, x24, x1
	str	x25, [x1]
	mov	x25, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_interface_cache_decode_lines
	str	x0, [x21]
	b	L119
L117:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x21]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L119:
	str	x0, [x20]
L120:
	str	x0, [x19]
	b	L125
L121:
	mov	x0, x20
	mov	x21, x24
	mov	x20, x23
	mov	x2, x21
	mov	x1, x20
	bl	_builder_interface_cache_decode_lines
	str	x0, [x19]
	b	L125
L123:
	mov	x19, x24
	mov	x0, x23
	bl	_donna_list_reverse
	mov	x21, x0
	mov	x0, x19
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L125:
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
/* end function builder_interface_cache_decode_lines */

.text
.balign 4
_builder_interface_cache_parse_type_strings:
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
	beq	L135
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L133
	bl	_builder_interface_cache_decode_type
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L130
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_interface_cache_parse_type_strings
	str	x0, [x20]
	b	L132
L130:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x20]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L132:
	str	x0, [x19]
	b	L137
L133:
	mov	x0, x20
	mov	x20, x21
	mov	x1, x20
	bl	_builder_interface_cache_parse_type_strings
	str	x0, [x19]
	b	L137
L135:
	mov	x0, x21
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L137:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_interface_cache_parse_type_strings */

.text
.balign 4
_builder_interface_cache_decode_type:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	adrp	x1, _str547@page
	add	x1, x1, _str547@pageoff
	bl	_donna_string_split
	bl	_builder_interface_cache_decode_type_tokens
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L143
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
	beq	L142
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x19]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L144
L142:
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L144
L143:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L144:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_interface_cache_decode_type */

.text
.balign 4
_builder_interface_cache_decode_type_tokens:
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
	beq	L262
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L149
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L150
L149:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str588@page
	add	x1, x1, _str588@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L150:
	cmp	w1, #0
	bne	L261
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L154
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L155
L154:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str614@page
	add	x1, x1, _str614@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L155:
	cmp	w1, #0
	bne	L260
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L159
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L160
L159:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str640@page
	add	x1, x1, _str640@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L160:
	cmp	w1, #0
	bne	L259
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L164
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L165
L164:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str666@page
	add	x1, x1, _str666@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L165:
	cmp	w1, #0
	bne	L258
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L169
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L170
L169:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str692@page
	add	x1, x1, _str692@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L170:
	cmp	w1, #0
	bne	L257
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L174
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L180
L174:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x20, [x1]
	adrp	x1, _str718@page
	add	x1, x1, _str718@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	ldr	x2, [x20]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	L177
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L179
L177:
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #1
L179:
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x2
	str	x1, [x19]
L180:
	cmp	w1, #0
	bne	L253
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L184
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L185
L184:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str772@page
	add	x1, x1, _str772@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L185:
	cmp	w1, #0
	bne	L249
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L189
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L195
L189:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x20, [x1]
	adrp	x1, _str814@page
	add	x1, x1, _str814@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	ldr	x2, [x20]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	L192
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L194
L192:
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #1
L194:
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x2
	str	x1, [x19]
L195:
	cmp	w1, #0
	bne	L241
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L199
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L205
L199:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x20, [x1]
	adrp	x1, _str882@page
	add	x1, x1, _str882@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	ldr	x2, [x20]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	L202
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L204
L202:
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #1
L204:
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x2
	str	x1, [x19]
L205:
	cmp	w1, #0
	bne	L229
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L209
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L219
L209:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x21, x1
	ldr	x20, [x1]
	adrp	x1, _str965@page
	add	x1, x1, _str965@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	ldr	x2, [x20]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	L212
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L218
L212:
	mov	x2, #16
	add	x2, x20, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x2, #1
	beq	L215
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L217
L215:
	mov	x2, #1
	str	x2, [x4]
	mov	x2, #1
L217:
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L218:
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x2
	str	x1, [x19]
L219:
	cmp	w1, #0
	bne	L221
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L263
L221:
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
	bl	_builder_interface_cache_parse_int
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L227
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_builder_interface_cache_decode_type_count
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L224
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x21, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L226
L224:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x20]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L226:
	str	x0, [x19]
	b	L263
L227:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x19]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L263
L229:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_builder_interface_cache_parse_int
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L239
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_builder_interface_cache_decode_type_count
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L236
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x25, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_builder_interface_cache_decode_type_tokens
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L233
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x22, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x23, [x0]
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x22, x0
	str	x24, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L235
L233:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x21]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L235:
	str	x0, [x20]
	b	L238
L236:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x20]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L238:
	str	x0, [x19]
	b	L263
L239:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x19]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L263
L241:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_builder_interface_cache_parse_int
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L247
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_builder_interface_cache_decode_type_count
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L244
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x21, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x23, x0
	mov	x0, #6
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L246
L244:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x20]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L246:
	str	x0, [x19]
	b	L263
L247:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x19]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L263
L249:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_builder_interface_cache_decode_type_tokens
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L251
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x20, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	mov	x0, #5
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L263
L251:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x19]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L263
L253:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	_builder_interface_cache_parse_int
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L255
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	mov	x0, #9
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L263
L255:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x19]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L263
L257:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x19, x0
	adrp	x0, _compiler_typesystem_types_TNil@page
	add	x0, x0, _compiler_typesystem_types_TNil@pageoff
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L263
L258:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x19, x0
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L263
L259:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x19, x0
	adrp	x0, _compiler_typesystem_types_TString@page
	add	x0, x0, _compiler_typesystem_types_TString@pageoff
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L263
L260:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x19, x0
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L263
L261:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x19, x0
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L263
L262:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L263:
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
/* end function builder_interface_cache_decode_type_tokens */

.text
.balign 4
_builder_interface_cache_decode_type_count:
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
	beq	L269
	mov	x19, x0
	mov	x0, x1
	bl	_builder_interface_cache_decode_type_tokens
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L267
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
	bl	_malloc
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
	bl	_builder_interface_cache_decode_type_count
	str	x0, [x19]
	b	L271
L267:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x19]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L271
L269:
	mov	x0, x20
	mov	x19, x1
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	str	x20, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L271:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_interface_cache_decode_type_count */

.text
.balign 4
_builder_interface_cache_parse_int:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_donna_int_parse
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_interface_cache_parse_int */

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

