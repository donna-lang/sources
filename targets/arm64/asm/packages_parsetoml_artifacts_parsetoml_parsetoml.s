.data
.balign 8
.globl parsetoml_parsetoml_NotFound
parsetoml_parsetoml_NotFound:
	.quad 1
/* end data */

.data
.balign 8
.globl parsetoml_parsetoml_NoPairs
parsetoml_parsetoml_NoPairs:
	.quad 1
/* end data */

.data
.balign 8
str18:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str43:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str45:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str59:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str61:
	.ascii "' is not a string"
	.byte 0
/* end data */

.data
.balign 8
str73:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str89:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str91:
	.ascii "' is not an integer"
	.byte 0
/* end data */

.data
.balign 8
str103:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str105:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str119:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str121:
	.ascii "' is not a boolean"
	.byte 0
/* end data */

.data
.balign 8
str133:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str149:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str151:
	.ascii "' is not a table"
	.byte 0
/* end data */

.data
.balign 8
str163:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str165:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str179:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str181:
	.ascii "' is not an array"
	.byte 0
/* end data */

.data
.balign 8
str208:
	.ascii "__err:"
	.byte 0
/* end data */

.data
.balign 8
str263:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str289:
	.ascii "[["
	.byte 0
/* end data */

.data
.balign 8
str299:
	.ascii "["
	.byte 0
/* end data */

.data
.balign 8
str340:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str342:
	.ascii "#"
	.byte 0
/* end data */

.data
.balign 8
str354:
	.ascii "unclosed '[' in: "
	.byte 0
/* end data */

.data
.balign 8
str360:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str374:
	.ascii "expected '=' in: "
	.byte 0
/* end data */

.data
.balign 8
str417:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str424:
	.ascii "empty key"
	.byte 0
/* end data */

.data
.balign 8
str426:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str437:
	.ascii "empty value"
	.byte 0
/* end data */

.data
.balign 8
str462:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str484:
	.ascii "unterminated string"
	.byte 0
/* end data */

.data
.balign 8
str503:
	.ascii "unexpected end after "
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
str512:
	.byte 34
	.byte 0
/* end data */

.data
.balign 8
str516:
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
str520:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str524:
	.byte 9
	.byte 0
/* end data */

.data
.balign 8
str528:
	.byte 13
	.byte 0
/* end data */

.data
.balign 8
str549:
	.ascii "unterminated literal string"
	.byte 0
/* end data */

.data
.balign 8
str559:
	.ascii "unterminated literal string"
	.byte 0
/* end data */

.data
.balign 8
str571:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str643:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str695:
	.ascii "expected '=' in pair: "
	.byte 0
/* end data */

.data
.balign 8
str734:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
str743:
	.ascii "false"
	.byte 0
/* end data */

.data
.balign 8
str761:
	.ascii "empty integer"
	.byte 0
/* end data */

.data
.balign 8
str777:
	.ascii "invalid integer: "
	.byte 0
/* end data */

.data
.balign 8
str786:
	.ascii "invalid value: "
	.byte 0
/* end data */

.text
.balign 16
.globl parsetoml_parsetoml_Ok
parsetoml_parsetoml_Ok:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_Ok, @function
.size parsetoml_parsetoml_Ok, .-parsetoml_parsetoml_Ok
/* end function parsetoml_parsetoml_Ok */

.text
.balign 16
.globl parsetoml_parsetoml_Err
parsetoml_parsetoml_Err:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_Err, @function
.size parsetoml_parsetoml_Err, .-parsetoml_parsetoml_Err
/* end function parsetoml_parsetoml_Err */

.text
.balign 16
.globl parsetoml_parsetoml_TomlString
parsetoml_parsetoml_TomlString:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_TomlString, @function
.size parsetoml_parsetoml_TomlString, .-parsetoml_parsetoml_TomlString
/* end function parsetoml_parsetoml_TomlString */

.text
.balign 16
.globl parsetoml_parsetoml_TomlInt
parsetoml_parsetoml_TomlInt:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_TomlInt, @function
.size parsetoml_parsetoml_TomlInt, .-parsetoml_parsetoml_TomlInt
/* end function parsetoml_parsetoml_TomlInt */

.text
.balign 16
.globl parsetoml_parsetoml_TomlBool
parsetoml_parsetoml_TomlBool:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #2
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_TomlBool, @function
.size parsetoml_parsetoml_TomlBool, .-parsetoml_parsetoml_TomlBool
/* end function parsetoml_parsetoml_TomlBool */

.text
.balign 16
.globl parsetoml_parsetoml_TomlArray
parsetoml_parsetoml_TomlArray:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #3
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_TomlArray, @function
.size parsetoml_parsetoml_TomlArray, .-parsetoml_parsetoml_TomlArray
/* end function parsetoml_parsetoml_TomlArray */

.text
.balign 16
.globl parsetoml_parsetoml_TomlTable
parsetoml_parsetoml_TomlTable:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #4
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_TomlTable, @function
.size parsetoml_parsetoml_TomlTable, .-parsetoml_parsetoml_TomlTable
/* end function parsetoml_parsetoml_TomlTable */

.text
.balign 16
.globl parsetoml_parsetoml_Found
parsetoml_parsetoml_Found:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_Found, @function
.size parsetoml_parsetoml_Found, .-parsetoml_parsetoml_Found
/* end function parsetoml_parsetoml_Found */

.text
.balign 16
.globl parsetoml_parsetoml_GotPairs
parsetoml_parsetoml_GotPairs:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_GotPairs, @function
.size parsetoml_parsetoml_GotPairs, .-parsetoml_parsetoml_GotPairs
/* end function parsetoml_parsetoml_GotPairs */

.text
.balign 16
.globl parsetoml_parsetoml_parse
parsetoml_parsetoml_parse:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, str18
	add	x1, x1, #:lo12:str18
	bl	donna_string_split
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	parsetoml_parsetoml_parse_doc
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L20
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_list_reverse
	bl	parsetoml_parsetoml_build_table
	bl	parsetoml_parsetoml_Ok
	b	.L21
.L20:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Err
.L21:
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_parse, @function
.size parsetoml_parsetoml_parse, .-parsetoml_parsetoml_parse
/* end function parsetoml_parsetoml_parse */

.text
.balign 16
.globl parsetoml_parsetoml_get_string
parsetoml_parsetoml_get_string:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	parsetoml_parsetoml_table_lookup
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L26
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L25
	adrp	x0, str59
	add	x0, x0, #:lo12:str59
	bl	__rt_str_concat
	adrp	x1, str61
	add	x1, x1, #:lo12:str61
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L27
.L25:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Ok
	str	x0, [x19]
	b	.L27
.L26:
	adrp	x0, str43
	add	x0, x0, #:lo12:str43
	bl	__rt_str_concat
	adrp	x1, str45
	add	x1, x1, #:lo12:str45
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
.L27:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_get_string, @function
.size parsetoml_parsetoml_get_string, .-parsetoml_parsetoml_get_string
/* end function parsetoml_parsetoml_get_string */

.text
.balign 16
.globl parsetoml_parsetoml_get_int
parsetoml_parsetoml_get_int:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	parsetoml_parsetoml_table_lookup
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L32
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L31
	adrp	x0, str89
	add	x0, x0, #:lo12:str89
	bl	__rt_str_concat
	adrp	x1, str91
	add	x1, x1, #:lo12:str91
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L33
.L31:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Ok
	str	x0, [x19]
	b	.L33
.L32:
	adrp	x0, str73
	add	x0, x0, #:lo12:str73
	bl	__rt_str_concat
	adrp	x1, str75
	add	x1, x1, #:lo12:str75
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
.L33:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_get_int, @function
.size parsetoml_parsetoml_get_int, .-parsetoml_parsetoml_get_int
/* end function parsetoml_parsetoml_get_int */

.text
.balign 16
.globl parsetoml_parsetoml_get_bool
parsetoml_parsetoml_get_bool:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	parsetoml_parsetoml_table_lookup
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L38
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #2
	beq	.L37
	adrp	x0, str119
	add	x0, x0, #:lo12:str119
	bl	__rt_str_concat
	adrp	x1, str121
	add	x1, x1, #:lo12:str121
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L39
.L37:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Ok
	str	x0, [x19]
	b	.L39
.L38:
	adrp	x0, str103
	add	x0, x0, #:lo12:str103
	bl	__rt_str_concat
	adrp	x1, str105
	add	x1, x1, #:lo12:str105
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
.L39:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_get_bool, @function
.size parsetoml_parsetoml_get_bool, .-parsetoml_parsetoml_get_bool
/* end function parsetoml_parsetoml_get_bool */

.text
.balign 16
.globl parsetoml_parsetoml_get_table
parsetoml_parsetoml_get_table:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	parsetoml_parsetoml_table_lookup
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L44
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #4
	beq	.L43
	adrp	x0, str149
	add	x0, x0, #:lo12:str149
	bl	__rt_str_concat
	adrp	x1, str151
	add	x1, x1, #:lo12:str151
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L45
.L43:
	bl	parsetoml_parsetoml_Ok
	str	x0, [x19]
	b	.L45
.L44:
	adrp	x0, str133
	add	x0, x0, #:lo12:str133
	bl	__rt_str_concat
	adrp	x1, str135
	add	x1, x1, #:lo12:str135
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
.L45:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_get_table, @function
.size parsetoml_parsetoml_get_table, .-parsetoml_parsetoml_get_table
/* end function parsetoml_parsetoml_get_table */

.text
.balign 16
.globl parsetoml_parsetoml_get_array
parsetoml_parsetoml_get_array:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	parsetoml_parsetoml_table_lookup
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L50
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #3
	beq	.L49
	adrp	x0, str179
	add	x0, x0, #:lo12:str179
	bl	__rt_str_concat
	adrp	x1, str181
	add	x1, x1, #:lo12:str181
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L51
.L49:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Ok
	str	x0, [x19]
	b	.L51
.L50:
	adrp	x0, str163
	add	x0, x0, #:lo12:str163
	bl	__rt_str_concat
	adrp	x1, str165
	add	x1, x1, #:lo12:str165
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
.L51:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_get_array, @function
.size parsetoml_parsetoml_get_array, .-parsetoml_parsetoml_get_array
/* end function parsetoml_parsetoml_get_array */

.text
.balign 16
.globl parsetoml_parsetoml_unwrap_table
parsetoml_parsetoml_unwrap_table:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L54
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	bl	parsetoml_parsetoml_TomlTable
	b	.L55
.L54:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L55:
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_unwrap_table, @function
.size parsetoml_parsetoml_unwrap_table, .-parsetoml_parsetoml_unwrap_table
/* end function parsetoml_parsetoml_unwrap_table */

.text
.balign 16
.globl parsetoml_parsetoml_unwrap_string
parsetoml_parsetoml_unwrap_string:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L58
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str208
	add	x0, x0, #:lo12:str208
	bl	__rt_str_concat
	b	.L59
.L58:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L59:
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_unwrap_string, @function
.size parsetoml_parsetoml_unwrap_string, .-parsetoml_parsetoml_unwrap_string
/* end function parsetoml_parsetoml_unwrap_string */

.text
.balign 16
.globl parsetoml_parsetoml_unwrap_int
parsetoml_parsetoml_unwrap_int:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L62
	mov	x0, #0
	b	.L63
.L62:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L63:
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_unwrap_int, @function
.size parsetoml_parsetoml_unwrap_int, .-parsetoml_parsetoml_unwrap_int
/* end function parsetoml_parsetoml_unwrap_int */

.text
.balign 16
.globl parsetoml_parsetoml_unwrap_bool
parsetoml_parsetoml_unwrap_bool:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L66
	mov	x0, #0
	b	.L67
.L66:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L67:
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_unwrap_bool, @function
.size parsetoml_parsetoml_unwrap_bool, .-parsetoml_parsetoml_unwrap_bool
/* end function parsetoml_parsetoml_unwrap_bool */

.text
.balign 16
.globl parsetoml_parsetoml_is_ok
parsetoml_parsetoml_is_ok:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L70
	mov	x0, #0
	b	.L71
.L70:
	mov	x0, #1
.L71:
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_is_ok, @function
.size parsetoml_parsetoml_is_ok, .-parsetoml_parsetoml_is_ok
/* end function parsetoml_parsetoml_is_ok */

.text
.balign 16
.globl parsetoml_parsetoml_is_err
parsetoml_parsetoml_is_err:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L74
	mov	x0, #1
	b	.L75
.L74:
	mov	x0, #0
.L75:
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_is_err, @function
.size parsetoml_parsetoml_is_err, .-parsetoml_parsetoml_is_err
/* end function parsetoml_parsetoml_is_err */

.text
.balign 16
.globl parsetoml_parsetoml_err_msg
parsetoml_parsetoml_err_msg:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L78
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L79
.L78:
	adrp	x0, str263
	add	x0, x0, #:lo12:str263
.L79:
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_err_msg, @function
.size parsetoml_parsetoml_err_msg, .-parsetoml_parsetoml_err_msg
/* end function parsetoml_parsetoml_err_msg */

.text
.balign 16
parsetoml_parsetoml_parse_doc:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x1
	mov	x1, x0
	mov	x0, x2
	mov	x21, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L85
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	donna_string_trim
	mov	x19, x0
	bl	parsetoml_parsetoml_is_empty_or_comment
	mov	x1, x22
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L83
	mov	x3, x21
	mov	x2, x1
	mov	x1, x20
	bl	parsetoml_parsetoml_process_line
	str	x0, [x19]
	b	.L87
.L83:
	mov	x0, x20
	mov	x20, x21
	mov	x2, x20
	bl	parsetoml_parsetoml_parse_doc
	str	x0, [x19]
	b	.L87
.L85:
	mov	x0, x21
	bl	parsetoml_parsetoml_Ok
.L87:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_parse_doc, @function
.size parsetoml_parsetoml_parse_doc, .-parsetoml_parsetoml_parse_doc
/* end function parsetoml_parsetoml_parse_doc */

.text
.balign 16
parsetoml_parsetoml_process_line:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x3
	mov	x19, x1
	mov	x1, x2
	mov	x21, x1
	adrp	x1, str289
	add	x1, x1, #:lo12:str289
	mov	x20, x0
	bl	donna_string_starts_with
	mov	x2, x22
	mov	x1, x21
	mov	x3, x0
	mov	x0, x20
	cmp	x3, #1
	beq	.L90
	mov	x3, x2
	mov	x2, x1
	mov	x1, x19
	bl	parsetoml_parsetoml_process_non_array_table
	b	.L92
.L90:
	mov	x0, x19
	bl	parsetoml_parsetoml_parse_doc
.L92:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_process_line, @function
.size parsetoml_parsetoml_process_line, .-parsetoml_parsetoml_process_line
/* end function parsetoml_parsetoml_process_line */

.text
.balign 16
parsetoml_parsetoml_process_non_array_table:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	adrp	x1, str299
	add	x1, x1, #:lo12:str299
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x4, x0
	mov	x0, x19
	cmp	x4, #1
	beq	.L95
	bl	parsetoml_parsetoml_apply_kv
	b	.L96
.L95:
	bl	parsetoml_parsetoml_apply_section
.L96:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_process_non_array_table, @function
.size parsetoml_parsetoml_process_non_array_table, .-parsetoml_parsetoml_process_non_array_table
/* end function parsetoml_parsetoml_process_non_array_table */

.text
.balign 16
parsetoml_parsetoml_apply_section:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x3
	mov	x19, x1
	bl	parsetoml_parsetoml_parse_section
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	ldr	x3, [x1]
	cmp	x3, #1
	beq	.L99
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	bl	parsetoml_parsetoml_parse_doc
	b	.L101
.L99:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Err
.L101:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_apply_section, @function
.size parsetoml_parsetoml_apply_section, .-parsetoml_parsetoml_apply_section
/* end function parsetoml_parsetoml_apply_section */

.text
.balign 16
parsetoml_parsetoml_apply_kv:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x3
	mov	x19, x1
	mov	x1, x2
	mov	x21, x1
	bl	parsetoml_parsetoml_parse_kv
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L104
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x3, x22
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x4, #1
	str	x4, [x2]
	mov	x4, #8
	add	x4, x2, x4
	str	x19, [x4]
	mov	x4, #16
	add	x4, x2, x4
	str	x3, [x4]
	bl	parsetoml_parsetoml_parse_doc
	b	.L106
.L104:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Err
.L106:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_apply_kv, @function
.size parsetoml_parsetoml_apply_kv, .-parsetoml_parsetoml_apply_kv
/* end function parsetoml_parsetoml_apply_kv */

.text
.balign 16
parsetoml_parsetoml_is_empty_or_comment:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, str340
	add	x1, x1, #:lo12:str340
	mov	x19, x0
	bl	donna_string_equal
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, str342
	add	x1, x1, #:lo12:str342
	bl	donna_string_starts_with
	orr	x0, x19, x0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_is_empty_or_comment, @function
.size parsetoml_parsetoml_is_empty_or_comment, .-parsetoml_parsetoml_is_empty_or_comment
/* end function parsetoml_parsetoml_is_empty_or_comment */

.text
.balign 16
parsetoml_parsetoml_parse_section:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x19
	bl	donna_string_length
	mov	x1, x19
	mov	x3, x0
	mov	x2, #1
	mov	x19, x1
	mov	x1, #93
	mov	x0, x19
	bl	parsetoml_parsetoml_find_char
	mov	x1, x19
	cmn	x0, #1
	cset	x2, eq
	cmp	x2, #1
	beq	.L111
	mov	x2, #1
	sub	x2, x0, x2
	mov	x19, x1
	mov	x1, #1
	mov	x0, x19
	bl	donna_string_slice
	bl	donna_string_trim
	adrp	x1, str360
	add	x1, x1, #:lo12:str360
	bl	donna_string_split
	adrp	x1, parsetoml_parsetoml_trim_str
	add	x1, x1, #:lo12:parsetoml_parsetoml_trim_str
	bl	donna_list_map
	bl	parsetoml_parsetoml_Ok
	b	.L112
.L111:
	adrp	x0, str354
	add	x0, x0, #:lo12:str354
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
.L112:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_parse_section, @function
.size parsetoml_parsetoml_parse_section, .-parsetoml_parsetoml_parse_section
/* end function parsetoml_parsetoml_parse_section */

.text
.balign 16
parsetoml_parsetoml_parse_kv:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x0
	mov	x0, x1
	mov	x19, x0
	mov	x0, x20
	bl	donna_string_length
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x3, x19
	mov	x2, #0
	mov	x21, x1
	mov	x1, #61
	mov	x20, x0
	mov	x0, x21
	bl	parsetoml_parsetoml_find_outside_str
	mov	x1, x21
	mov	x22, x0
	mov	x0, x20
	cmn	x22, #1
	mov	x20, x0
	cset	x0, eq
	cmp	x0, #1
	beq	.L122
	mov	x2, x22
	mov	x21, x1
	mov	x1, #0
	mov	x0, x21
	bl	donna_string_slice
	bl	donna_string_trim
	mov	x1, x21
	mov	x21, x1
	mov	x1, #1
	add	x1, x22, x1
	sub	x2, x19, x22
	mov	x3, #1
	sub	x2, x2, x3
	mov	x19, x0
	mov	x0, x21
	bl	donna_string_slice
	bl	donna_string_trim
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	parsetoml_parsetoml_parse_key_str
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L120
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	parsetoml_parsetoml_strip_comment
	bl	parsetoml_parsetoml_parse_value
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	.L117
	mov	x3, #8
	add	x2, x2, x3
	ldr	x21, [x2]
	bl	donna_list_append
	mov	x22, x0
	mov	x0, #16
	bl	malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	bl	parsetoml_parsetoml_Ok
	str	x0, [x20]
	b	.L119
.L117:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Err
	str	x0, [x20]
.L119:
	str	x0, [x19]
	b	.L123
.L120:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L123
.L122:
	adrp	x0, str374
	add	x0, x0, #:lo12:str374
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
.L123:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_parse_kv, @function
.size parsetoml_parsetoml_parse_kv, .-parsetoml_parsetoml_parse_kv
/* end function parsetoml_parsetoml_parse_kv */

.text
.balign 16
parsetoml_parsetoml_parse_key_str:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, str417
	add	x1, x1, #:lo12:str417
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L126
	adrp	x1, str426
	add	x1, x1, #:lo12:str426
	bl	donna_string_split
	adrp	x1, parsetoml_parsetoml_trim_str
	add	x1, x1, #:lo12:parsetoml_parsetoml_trim_str
	bl	donna_list_map
	bl	parsetoml_parsetoml_Ok
	b	.L127
.L126:
	adrp	x0, str424
	add	x0, x0, #:lo12:str424
	bl	parsetoml_parsetoml_Err
.L127:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_parse_key_str, @function
.size parsetoml_parsetoml_parse_key_str, .-parsetoml_parsetoml_parse_key_str
/* end function parsetoml_parsetoml_parse_key_str */

.text
.balign 16
parsetoml_parsetoml_parse_value:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L138
	mov	x1, #0
	mov	x19, x0
	bl	donna_string_char_at
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #34
	beq	.L137
	cmp	x1, #39
	beq	.L136
	cmp	x1, #91
	beq	.L135
	cmp	x1, #123
	beq	.L134
	bl	parsetoml_parsetoml_parse_scalar
	str	x0, [x19]
	b	.L139
.L134:
	bl	parsetoml_parsetoml_parse_inline_table
	str	x0, [x19]
	b	.L139
.L135:
	bl	parsetoml_parsetoml_parse_array
	str	x0, [x19]
	b	.L139
.L136:
	bl	parsetoml_parsetoml_parse_sq_string
	str	x0, [x19]
	b	.L139
.L137:
	bl	parsetoml_parsetoml_parse_dq_string
	str	x0, [x19]
	b	.L139
.L138:
	adrp	x0, str437
	add	x0, x0, #:lo12:str437
	bl	parsetoml_parsetoml_Err
.L139:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_parse_value, @function
.size parsetoml_parsetoml_parse_value, .-parsetoml_parsetoml_parse_value
/* end function parsetoml_parsetoml_parse_value */

.text
.balign 16
parsetoml_parsetoml_parse_dq_string:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	donna_string_length
	mov	x2, x0
	mov	x0, x19
	adrp	x3, str462
	add	x3, x3, #:lo12:str462
	mov	x1, #1
	bl	parsetoml_parsetoml_read_dq
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L142
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_TomlString
	bl	parsetoml_parsetoml_Ok
	b	.L143
.L142:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Err
.L143:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_parse_dq_string, @function
.size parsetoml_parsetoml_parse_dq_string, .-parsetoml_parsetoml_parse_dq_string
/* end function parsetoml_parsetoml_parse_dq_string */

.text
.balign 16
parsetoml_parsetoml_read_dq:
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
	mov	x21, x2
	mov	x23, x1
	mov	x20, x0
	mov	x0, x3
	cmp	x23, x21
	cset	x1, ge
	cmp	x1, #1
	beq	.L170
	mov	x1, x23
	mov	x19, x0
	mov	x0, x20
	bl	donna_string_char_at
	mov	x2, x21
	mov	x3, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x3, #34
	beq	.L169
	mov	x1, #1
	add	x1, x23, x1
	cmp	x3, #92
	beq	.L148
	mov	x22, x2
	mov	x2, #1
	mov	x21, x1
	mov	x1, x23
	mov	x23, x0
	mov	x0, x20
	bl	donna_string_slice
	mov	x1, x0
	mov	x0, x23
	bl	__rt_str_concat
	mov	x2, x22
	mov	x1, x21
	mov	x3, x0
	mov	x0, x20
	mov	x21, x0
	bl	parsetoml_parsetoml_read_dq
	str	x0, [x19]
	b	.L171
.L148:
	mov	x22, x23
	mov	x21, x20
	cmp	x1, x2
	mov	x25, x2
	cset	x2, ge
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	.L167
	mov	x24, x1
	mov	x23, x0
	mov	x0, x21
	bl	donna_string_char_at
	mov	x2, x25
	mov	x1, x24
	mov	x3, x0
	mov	x0, x23
	mov	x4, #16
	sub	sp, sp, x4
	mov	x23, sp
	cmp	x3, #34
	beq	.L164
	cmp	x3, #92
	beq	.L162
	cmp	x3, #110
	beq	.L160
	cmp	x3, #116
	beq	.L158
	cmp	x3, #114
	beq	.L156
	mov	x25, x2
	mov	x2, #1
	mov	x24, x0
	mov	x0, x21
	bl	donna_string_slice
	mov	x2, x25
	mov	x1, x0
	mov	x0, x24
	str	x1, [x23]
	b	.L166
.L156:
	adrp	x1, str528
	add	x1, x1, #:lo12:str528
	str	x1, [x23]
	adrp	x1, str528
	add	x1, x1, #:lo12:str528
	b	.L166
.L158:
	adrp	x1, str524
	add	x1, x1, #:lo12:str524
	str	x1, [x23]
	adrp	x1, str524
	add	x1, x1, #:lo12:str524
	b	.L166
.L160:
	adrp	x1, str520
	add	x1, x1, #:lo12:str520
	str	x1, [x23]
	adrp	x1, str520
	add	x1, x1, #:lo12:str520
	b	.L166
.L162:
	adrp	x1, str516
	add	x1, x1, #:lo12:str516
	str	x1, [x23]
	adrp	x1, str516
	add	x1, x1, #:lo12:str516
	b	.L166
.L164:
	adrp	x1, str512
	add	x1, x1, #:lo12:str512
	str	x1, [x23]
	adrp	x1, str512
	add	x1, x1, #:lo12:str512
.L166:
	mov	x23, x2
	mov	x2, #2
	add	x22, x22, x2
	bl	__rt_str_concat
	mov	x2, x23
	mov	x1, x22
	mov	x3, x0
	mov	x0, x21
	bl	parsetoml_parsetoml_read_dq
	str	x0, [x20]
	b	.L168
.L167:
	adrp	x0, str503
	add	x0, x0, #:lo12:str503
	bl	parsetoml_parsetoml_Err
	str	x0, [x20]
.L168:
	str	x0, [x19]
	b	.L171
.L169:
	bl	parsetoml_parsetoml_Ok
	str	x0, [x19]
	b	.L171
.L170:
	adrp	x0, str484
	add	x0, x0, #:lo12:str484
	bl	parsetoml_parsetoml_Err
.L171:
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
.type parsetoml_parsetoml_read_dq, @function
.size parsetoml_parsetoml_read_dq, .-parsetoml_parsetoml_read_dq
/* end function parsetoml_parsetoml_read_dq */

.text
.balign 16
parsetoml_parsetoml_parse_sq_string:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	donna_string_length
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #2
	cset	x1, lt
	cmp	x1, #1
	beq	.L176
	mov	x2, #1
	mov	x1, #39
	mov	x19, x0
	bl	parsetoml_parsetoml_find_char
	mov	x1, x0
	mov	x0, x19
	cmn	x1, #1
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L175
	mov	x2, #1
	sub	x2, x1, x2
	mov	x1, #1
	bl	donna_string_slice
	bl	parsetoml_parsetoml_TomlString
	bl	parsetoml_parsetoml_Ok
	str	x0, [x19]
	b	.L177
.L175:
	adrp	x0, str559
	add	x0, x0, #:lo12:str559
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L177
.L176:
	adrp	x0, str549
	add	x0, x0, #:lo12:str549
	bl	parsetoml_parsetoml_Err
.L177:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_parse_sq_string, @function
.size parsetoml_parsetoml_parse_sq_string, .-parsetoml_parsetoml_parse_sq_string
/* end function parsetoml_parsetoml_parse_sq_string */

.text
.balign 16
parsetoml_parsetoml_parse_array:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #2
	sub	x2, x1, x2
	mov	x1, #1
	bl	donna_string_slice
	bl	donna_string_trim
	adrp	x1, str571
	add	x1, x1, #:lo12:str571
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L182
	mov	x19, x0
	bl	donna_string_length
	mov	x2, x0
	mov	x0, x19
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	mov	x1, #0
	bl	parsetoml_parsetoml_parse_arr_elems
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L181
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_TomlArray
	bl	parsetoml_parsetoml_Ok
	str	x0, [x19]
	b	.L183
.L181:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L183
.L182:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	bl	parsetoml_parsetoml_TomlArray
	bl	parsetoml_parsetoml_Ok
.L183:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_parse_array, @function
.size parsetoml_parsetoml_parse_array, .-parsetoml_parsetoml_parse_array
/* end function parsetoml_parsetoml_parse_array */

.text
.balign 16
parsetoml_parsetoml_parse_arr_elems:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x21, x3
	mov	x22, x2
	mov	x2, x22
	mov	x19, x0
	bl	parsetoml_parsetoml_skip_ws
	mov	x1, x0
	mov	x0, x19
	cmp	x1, x22
	cset	x2, ge
	cmp	x2, #1
	beq	.L193
	mov	x4, #0
	mov	x3, #0
	mov	x2, x22
	mov	x20, x1
	mov	x19, x0
	bl	parsetoml_parsetoml_scan_elem
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	ldr	x23, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	sub	x2, x23, x1
	mov	x19, x0
	bl	donna_string_slice
	bl	donna_string_trim
	bl	parsetoml_parsetoml_parse_value
	mov	x1, x22
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	.L191
	mov	x3, #8
	add	x2, x2, x3
	ldr	x22, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x20, #1
	beq	.L189
	str	x1, [x2]
	mov	x20, x1
	b	.L190
.L189:
	mov	x20, x1
	mov	x1, #1
	add	x1, x23, x1
	str	x1, [x2]
.L190:
	mov	x24, x1
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x24
	mov	x3, x0
	mov	x0, x23
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #8
	add	x2, x3, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x3, x2
	str	x21, [x2]
	mov	x2, x20
	bl	parsetoml_parsetoml_parse_arr_elems
	str	x0, [x19]
	b	.L195
.L191:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L195
.L193:
	mov	x0, x21
	bl	donna_list_reverse
	bl	parsetoml_parsetoml_Ok
.L195:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type parsetoml_parsetoml_parse_arr_elems, @function
.size parsetoml_parsetoml_parse_arr_elems, .-parsetoml_parsetoml_parse_arr_elems
/* end function parsetoml_parsetoml_parse_arr_elems */

.text
.balign 16
parsetoml_parsetoml_parse_inline_table:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #2
	sub	x2, x1, x2
	mov	x1, #1
	bl	donna_string_slice
	bl	donna_string_trim
	adrp	x1, str643
	add	x1, x1, #:lo12:str643
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L200
	mov	x19, x0
	bl	donna_string_length
	mov	x2, x0
	mov	x0, x19
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	mov	x1, #0
	bl	parsetoml_parsetoml_parse_inline_pairs
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L199
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_TomlTable
	bl	parsetoml_parsetoml_Ok
	str	x0, [x19]
	b	.L201
.L199:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L201
.L200:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	bl	parsetoml_parsetoml_TomlTable
	bl	parsetoml_parsetoml_Ok
.L201:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_parse_inline_table, @function
.size parsetoml_parsetoml_parse_inline_table, .-parsetoml_parsetoml_parse_inline_table
/* end function parsetoml_parsetoml_parse_inline_table */

.text
.balign 16
parsetoml_parsetoml_parse_inline_pairs:
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
	str	x27, [x29, 40]
	mov	x22, x3
	mov	x24, x2
	mov	x2, x24
	mov	x19, x0
	bl	parsetoml_parsetoml_skip_ws
	mov	x1, x0
	mov	x0, x19
	cmp	x1, x24
	cset	x2, ge
	cmp	x2, #1
	beq	.L214
	mov	x4, #0
	mov	x3, #0
	mov	x2, x24
	mov	x20, x1
	mov	x19, x0
	bl	parsetoml_parsetoml_scan_elem
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	ldr	x23, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x21, [x2]
	str	x21, [x29, 16]
	sub	x2, x23, x1
	mov	x19, x0
	bl	donna_string_slice
	bl	donna_string_trim
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	donna_string_length
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x3, x20
	mov	x2, #0
	mov	x21, x1
	mov	x1, #61
	mov	x19, x0
	mov	x0, x21
	bl	parsetoml_parsetoml_find_outside_str
	mov	x1, x21
	mov	x27, x0
	mov	x0, x19
	cmn	x27, #1
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L213
	mov	x2, x27
	mov	x25, x1
	mov	x1, #0
	mov	x21, x0
	mov	x0, x25
	bl	donna_string_slice
	bl	donna_string_trim
	mov	x1, x25
	mov	x25, x0
	mov	x0, x21
	ldr	x21, [x29, 16]
	mov	x26, x1
	mov	x1, #1
	add	x1, x27, x1
	sub	x2, x20, x27
	mov	x3, #1
	sub	x2, x2, x3
	mov	x20, x0
	mov	x0, x26
	bl	donna_string_slice
	bl	donna_string_trim
	bl	parsetoml_parsetoml_parse_value
	mov	x1, x24
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	.L210
	mov	x3, #8
	add	x2, x2, x3
	ldr	x24, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x21, #1
	beq	.L208
	str	x1, [x2]
	mov	x21, x1
	b	.L209
.L208:
	mov	x21, x1
	mov	x1, #1
	add	x1, x23, x1
	str	x1, [x2]
.L209:
	mov	x26, x1
	mov	x23, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x26
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	str	x25, [x23]
	mov	x25, x1
	mov	x1, #8
	add	x1, x23, x1
	str	x24, [x1]
	mov	x24, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x25
	mov	x3, x0
	mov	x0, x24
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #8
	add	x2, x3, x2
	str	x23, [x2]
	mov	x2, #16
	add	x2, x3, x2
	str	x22, [x2]
	mov	x2, x21
	bl	parsetoml_parsetoml_parse_inline_pairs
	str	x0, [x20]
	b	.L212
.L210:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_Err
	str	x0, [x20]
.L212:
	str	x0, [x19]
	b	.L216
.L213:
	adrp	x0, str695
	add	x0, x0, #:lo12:str695
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L216
.L214:
	mov	x0, x22
	bl	donna_list_reverse
	bl	parsetoml_parsetoml_Ok
.L216:
	ldr	x19, [x29, 104]
	ldr	x20, [x29, 96]
	ldr	x21, [x29, 88]
	ldr	x22, [x29, 80]
	ldr	x23, [x29, 72]
	ldr	x24, [x29, 64]
	ldr	x25, [x29, 56]
	ldr	x26, [x29, 48]
	ldr	x27, [x29, 40]
	mov sp, x29
	ldp	x29, x30, [sp], 112
	ret
.type parsetoml_parsetoml_parse_inline_pairs, @function
.size parsetoml_parsetoml_parse_inline_pairs, .-parsetoml_parsetoml_parse_inline_pairs
/* end function parsetoml_parsetoml_parse_inline_pairs */

.text
.balign 16
parsetoml_parsetoml_parse_scalar:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, str734
	add	x1, x1, #:lo12:str734
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L221
	adrp	x1, str743
	add	x1, x1, #:lo12:str743
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L220
	bl	parsetoml_parsetoml_parse_int
	str	x0, [x19]
	b	.L222
.L220:
	mov	x0, #0
	bl	parsetoml_parsetoml_TomlBool
	bl	parsetoml_parsetoml_Ok
	str	x0, [x19]
	b	.L222
.L221:
	mov	x0, #1
	bl	parsetoml_parsetoml_TomlBool
	bl	parsetoml_parsetoml_Ok
.L222:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_parse_scalar, @function
.size parsetoml_parsetoml_parse_scalar, .-parsetoml_parsetoml_parse_scalar
/* end function parsetoml_parsetoml_parse_scalar */

.text
.balign 16
parsetoml_parsetoml_parse_int:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x19, x0
	mov	x0, x19
	bl	donna_string_length
	mov	x1, x19
	mov	x20, x0
	cmp	x20, #0
	beq	.L240
	mov	x19, x1
	mov	x1, #0
	mov	x0, x19
	bl	donna_string_char_at
	mov	x2, x20
	mov	x1, x19
	mov	x23, x0
	cmp	x23, #45
	cset	x22, eq
	mov	x0, #16
	mov	x21, x1
	sub	sp, sp, x0
	mov	x1, sp
	cmp	x22, #1
	beq	.L227
	mov	x0, #0
	str	x0, [x1]
	mov	x1, #0
	b	.L229
.L227:
	mov	x0, #1
	str	x0, [x1]
	mov	x1, #1
.L229:
	cmp	x1, x2
	cset	x0, ge
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x0, #1
	beq	.L238
	mov	x24, x2
	mov	x20, x1
	mov	x0, x21
	bl	parsetoml_parsetoml_all_digits
	mov	x2, x24
	mov	x1, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x0, #0
	beq	.L235
	mov	x3, #0
	mov	x0, x21
	bl	parsetoml_parsetoml_parse_digits
	mov	x1, x0
	mov	x0, #16
	sub	sp, sp, x0
	mov	x21, sp
	cmp	x23, #45
	cmp	x22, #1
	beq	.L233
	mov	x0, x1
	bl	parsetoml_parsetoml_TomlInt
	bl	parsetoml_parsetoml_Ok
	str	x0, [x21]
	b	.L234
.L233:
	mov	x0, #0
	sub	x0, x0, x1
	bl	parsetoml_parsetoml_TomlInt
	bl	parsetoml_parsetoml_Ok
	str	x0, [x21]
.L234:
	str	x0, [x20]
	b	.L237
.L235:
	mov	x1, x21
	adrp	x0, str786
	add	x0, x0, #:lo12:str786
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
	str	x0, [x20]
.L237:
	str	x0, [x19]
	b	.L241
.L238:
	mov	x1, x21
	adrp	x0, str777
	add	x0, x0, #:lo12:str777
	bl	__rt_str_concat
	bl	parsetoml_parsetoml_Err
	str	x0, [x19]
	b	.L241
.L240:
	adrp	x0, str761
	add	x0, x0, #:lo12:str761
	bl	parsetoml_parsetoml_Err
.L241:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type parsetoml_parsetoml_parse_int, @function
.size parsetoml_parsetoml_parse_int, .-parsetoml_parsetoml_parse_int
/* end function parsetoml_parsetoml_parse_int */

.text
.balign 16
parsetoml_parsetoml_build_table:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	parsetoml_parsetoml_fold_entries
	bl	parsetoml_parsetoml_TomlTable
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_build_table, @function
.size parsetoml_parsetoml_build_table, .-parsetoml_parsetoml_build_table
/* end function parsetoml_parsetoml_build_table */

.text
.balign 16
parsetoml_parsetoml_fold_entries:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L246
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x19, [x1]
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	bl	parsetoml_parsetoml_set_nested
	mov	x1, x0
	mov	x0, x19
	bl	parsetoml_parsetoml_fold_entries
.L246:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_fold_entries, @function
.size parsetoml_parsetoml_fold_entries, .-parsetoml_parsetoml_fold_entries
/* end function parsetoml_parsetoml_fold_entries */

.text
.balign 16
parsetoml_parsetoml_set_nested:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	ldr	x3, [x1]
	cmp	x3, #0
	beq	.L261
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x3, #1
	beq	.L251
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L252
.L251:
	mov	x3, #16
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L252:
	cmp	w3, #0
	bne	.L260
	mov	x3, #8
	add	x3, x1, x3
	ldr	x20, [x3]
	mov	x22, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	parsetoml_parsetoml_get_sub_pairs
	mov	x2, x22
	mov	x1, x21
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	ldr	x5, [x3]
	cmp	x5, #1
	beq	.L256
	mov	x5, #8
	add	x3, x3, x5
	ldr	x3, [x3]
	str	x3, [x4]
	mov	x19, x0
	b	.L259
.L256:
	mov	x3, x4
	mov	x19, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x3]
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
.L259:
	mov	x0, x3
	bl	parsetoml_parsetoml_set_nested
	bl	parsetoml_parsetoml_TomlTable
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	parsetoml_parsetoml_upsert
	b	.L261
.L260:
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	bl	parsetoml_parsetoml_upsert
.L261:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_set_nested, @function
.size parsetoml_parsetoml_set_nested, .-parsetoml_parsetoml_set_nested
/* end function parsetoml_parsetoml_set_nested */

.text
.balign 16
parsetoml_parsetoml_upsert:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	bl	parsetoml_parsetoml_upsert_loop
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_upsert, @function
.size parsetoml_parsetoml_upsert, .-parsetoml_parsetoml_upsert
/* end function parsetoml_parsetoml_upsert */

.text
.balign 16
parsetoml_parsetoml_upsert_loop:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	ldr	x4, [x0]
	cmp	x4, #0
	beq	.L269
	mov	x21, x3
	mov	x3, #8
	add	x3, x0, x3
	ldr	x22, [x3]
	mov	x24, x2
	mov	x2, #16
	add	x0, x0, x2
	ldr	x20, [x0]
	ldr	x0, [x22]
	mov	x19, x1
	bl	donna_string_equal
	mov	x1, x19
	mov	x23, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #1
	beq	.L267
	mov	x0, #24
	bl	malloc
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, #1
	str	x0, [x3]
	mov	x0, #8
	add	x0, x3, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x3, x0
	str	x21, [x0]
	mov	x23, x2
	mov	x22, x1
	mov	x0, x20
	bl	parsetoml_parsetoml_upsert_loop
	str	x0, [x19]
	b	.L271
.L267:
	mov	x3, x21
	mov	x22, x23
	mov	x23, x24
	mov	x0, x3
	bl	donna_list_reverse
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	mov	x2, x23
	mov	x1, x22
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x1, [x21]
	mov	x1, #8
	add	x1, x21, x1
	str	x2, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x22
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x20, [x2]
	bl	donna_list_append
	str	x0, [x19]
	b	.L271
.L269:
	mov	x20, x3
	mov	x21, x2
	mov	x19, x1
	mov	x0, #16
	bl	malloc
	mov	x2, x21
	mov	x1, x19
	mov	x19, x0
	str	x1, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x2, [x0]
	mov	x0, #24
	bl	malloc
	mov	x3, x20
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x3, [x1]
	bl	donna_list_reverse
.L271:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type parsetoml_parsetoml_upsert_loop, @function
.size parsetoml_parsetoml_upsert_loop, .-parsetoml_parsetoml_upsert_loop
/* end function parsetoml_parsetoml_upsert_loop */

.text
.balign 16
parsetoml_parsetoml_get_sub_pairs:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L280
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x19, x0
	ldr	x0, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x21, [x2]
	mov	x20, x1
	bl	donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L275
	bl	parsetoml_parsetoml_get_sub_pairs
	str	x0, [x19]
	b	.L281
.L275:
	mov	x0, #16
	sub	sp, sp, x0
	mov	x20, sp
	ldr	x0, [x21]
	cmp	x0, #4
	beq	.L278
	adrp	x0, parsetoml_parsetoml_NoPairs
	add	x0, x0, #:lo12:parsetoml_parsetoml_NoPairs
	str	x0, [x20]
	adrp	x0, parsetoml_parsetoml_NoPairs
	add	x0, x0, #:lo12:parsetoml_parsetoml_NoPairs
	b	.L279
.L278:
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_GotPairs
	str	x0, [x20]
.L279:
	str	x0, [x19]
	b	.L281
.L280:
	adrp	x0, parsetoml_parsetoml_NoPairs
	add	x0, x0, #:lo12:parsetoml_parsetoml_NoPairs
.L281:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_get_sub_pairs, @function
.size parsetoml_parsetoml_get_sub_pairs, .-parsetoml_parsetoml_get_sub_pairs
/* end function parsetoml_parsetoml_get_sub_pairs */

.text
.balign 16
parsetoml_parsetoml_table_lookup:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #4
	beq	.L284
	adrp	x0, parsetoml_parsetoml_NotFound
	add	x0, x0, #:lo12:parsetoml_parsetoml_NotFound
	b	.L285
.L284:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_lookup_pairs
.L285:
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_table_lookup, @function
.size parsetoml_parsetoml_table_lookup, .-parsetoml_parsetoml_table_lookup
/* end function parsetoml_parsetoml_table_lookup */

.text
.balign 16
parsetoml_parsetoml_lookup_pairs:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L291
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x19, x0
	ldr	x0, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	bl	donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L289
	bl	parsetoml_parsetoml_lookup_pairs
	str	x0, [x19]
	b	.L292
.L289:
	mov	x0, x20
	bl	parsetoml_parsetoml_Found
	str	x0, [x19]
	b	.L292
.L291:
	adrp	x0, parsetoml_parsetoml_NotFound
	add	x0, x0, #:lo12:parsetoml_parsetoml_NotFound
.L292:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_lookup_pairs, @function
.size parsetoml_parsetoml_lookup_pairs, .-parsetoml_parsetoml_lookup_pairs
/* end function parsetoml_parsetoml_lookup_pairs */

.text
.balign 16
parsetoml_parsetoml_trim_str:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_string_trim
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_trim_str, @function
.size parsetoml_parsetoml_trim_str, .-parsetoml_parsetoml_trim_str
/* end function parsetoml_parsetoml_trim_str */

.text
.balign 16
parsetoml_parsetoml_skip_ws:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	cmp	x20, x21
	cset	x1, ge
	cmp	x1, #1
	beq	.L300
	mov	x1, x20
	mov	x19, x0
	bl	donna_string_char_at
	mov	x2, x21
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #32
	cset	x1, eq
	cmp	x3, #9
	cset	x4, eq
	orr	x1, x1, x4
	cmp	x3, #13
	cset	x3, eq
	orr	x1, x1, x3
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x1, #1
	beq	.L299
	str	x20, [x19]
	mov	x0, x20
	b	.L301
.L299:
	mov	x1, #1
	add	x1, x20, x1
	bl	parsetoml_parsetoml_skip_ws
	str	x0, [x19]
	b	.L301
.L300:
	mov	x0, x20
.L301:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_skip_ws, @function
.size parsetoml_parsetoml_skip_ws, .-parsetoml_parsetoml_skip_ws
/* end function parsetoml_parsetoml_skip_ws */

.text
.balign 16
parsetoml_parsetoml_find_outside_str:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x4, #0
	bl	parsetoml_parsetoml_fos_loop
	ldp	x29, x30, [sp], 16
	ret
.type parsetoml_parsetoml_find_outside_str, @function
.size parsetoml_parsetoml_find_outside_str, .-parsetoml_parsetoml_find_outside_str
/* end function parsetoml_parsetoml_find_outside_str */

.text
.balign 16
parsetoml_parsetoml_fos_loop:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x23, x4
	mov	x22, x3
	mov	x21, x2
	cmp	x21, x22
	cset	x2, ge
	cmp	x2, #1
	beq	.L323
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	bl	donna_string_char_at
	mov	x4, x23
	mov	x3, x22
	mov	x1, x20
	mov	x5, x0
	mov	x0, x19
	cmp	x4, #0
	cset	x6, ne
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	mov	x2, #1
	add	x2, x21, x2
	cmp	x6, #1
	beq	.L316
	cmp	x1, x5
	cset	x4, eq
	mov	x6, #16
	sub	sp, sp, x6
	mov	x20, sp
	cmp	x4, #1
	beq	.L313
	mov	x4, #16
	sub	sp, sp, x4
	mov	x21, sp
	cmp	x5, #34
	beq	.L311
	cmp	x5, #39
	beq	.L310
	mov	x4, #0
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x21]
	b	.L312
.L310:
	mov	x4, #39
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x21]
	b	.L312
.L311:
	mov	x4, #34
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x21]
.L312:
	str	x0, [x20]
	b	.L315
.L313:
	str	x21, [x20]
	mov	x0, x21
.L315:
	str	x0, [x19]
	b	.L324
.L316:
	cmp	x5, #92
	cset	x6, eq
	cmp	x4, #34
	cset	x7, eq
	and	x6, x6, x7
	mov	x7, #16
	sub	sp, sp, x7
	mov	x20, sp
	cmp	x6, #1
	beq	.L321
	cmp	x4, x5
	cset	x5, eq
	mov	x6, #16
	sub	sp, sp, x6
	mov	x21, sp
	cmp	x5, #1
	beq	.L319
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x21]
	b	.L320
.L319:
	mov	x4, #0
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x21]
.L320:
	str	x0, [x20]
	b	.L322
.L321:
	mov	x2, #2
	add	x2, x21, x2
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x20]
.L322:
	str	x0, [x19]
	b	.L324
.L323:
	mov	x0, #-1
.L324:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type parsetoml_parsetoml_fos_loop, @function
.size parsetoml_parsetoml_fos_loop, .-parsetoml_parsetoml_fos_loop
/* end function parsetoml_parsetoml_fos_loop */

.text
.balign 16
parsetoml_parsetoml_find_char:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x3
	mov	x20, x2
	cmp	x20, x22
	cset	x2, ge
	cmp	x2, #1
	beq	.L330
	mov	x21, x1
	mov	x1, x20
	mov	x19, x0
	bl	donna_string_char_at
	mov	x3, x22
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	cmp	x1, x2
	cset	x2, eq
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x2, #1
	beq	.L328
	mov	x2, #1
	add	x2, x20, x2
	bl	parsetoml_parsetoml_find_char
	str	x0, [x19]
	b	.L331
.L328:
	mov	x0, x20
	str	x0, [x19]
	b	.L331
.L330:
	mov	x0, #-1
.L331:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_find_char, @function
.size parsetoml_parsetoml_find_char, .-parsetoml_parsetoml_find_char
/* end function parsetoml_parsetoml_find_char */

.text
.balign 16
parsetoml_parsetoml_scan_elem:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x23, x4
	mov	x22, x3
	cmp	x1, x2
	mov	x21, x2
	cset	x2, ge
	cmp	x2, #1
	beq	.L366
	mov	x20, x1
	mov	x19, x0
	bl	donna_string_char_at
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x5, x0
	mov	x0, x19
	cmp	x4, #0
	cset	x6, ne
	mov	x7, #16
	sub	sp, sp, x7
	mov	x19, sp
	mov	x22, x1
	mov	x1, #1
	add	x1, x22, x1
	cmp	x6, #1
	beq	.L357
	mov	x4, #16
	sub	sp, sp, x4
	mov	x20, sp
	cmp	x5, #34
	beq	.L355
	cmp	x5, #39
	beq	.L354
	mov	x4, #1
	add	x6, x3, x4
	cmp	x5, #91
	beq	.L352
	cmp	x5, #123
	beq	.L350
	mov	x4, #1
	sub	x6, x3, x4
	cmp	x5, #93
	beq	.L348
	cmp	x5, #125
	beq	.L346
	cmp	x5, #44
	beq	.L342
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L356
.L342:
	cmp	x3, #0
	cset	x4, eq
	mov	x5, #16
	sub	sp, sp, x5
	mov	x21, sp
	cmp	x4, #1
	beq	.L344
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x21]
	b	.L345
.L344:
	mov	x0, #16
	bl	malloc
	mov	x1, x22
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x21]
.L345:
	str	x0, [x20]
	b	.L356
.L346:
	mov	x3, x6
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L356
.L348:
	mov	x3, x6
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L356
.L350:
	mov	x3, x6
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L356
.L352:
	mov	x3, x6
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L356
.L354:
	mov	x4, #39
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L356
.L355:
	mov	x4, #34
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
.L356:
	str	x0, [x19]
	b	.L368
.L357:
	mov	x21, x22
	cmp	x5, #92
	cset	x6, eq
	cmp	x4, #34
	cset	x7, eq
	and	x6, x6, x7
	mov	x7, #16
	sub	sp, sp, x7
	mov	x20, sp
	cmp	x6, #1
	beq	.L363
	cmp	x4, x5
	cset	x5, eq
	mov	x6, #16
	sub	sp, sp, x6
	mov	x21, sp
	cmp	x5, #1
	beq	.L361
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x21]
	b	.L362
.L361:
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x21]
.L362:
	str	x0, [x20]
	b	.L365
.L363:
	mov	x1, x21
	mov	x5, #2
	add	x1, x1, x5
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
.L365:
	str	x0, [x19]
	b	.L368
.L366:
	mov	x19, x21
	mov	x0, #16
	bl	malloc
	mov	x2, x19
	str	x2, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #0
	str	x1, [x2]
.L368:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type parsetoml_parsetoml_scan_elem, @function
.size parsetoml_parsetoml_scan_elem, .-parsetoml_parsetoml_scan_elem
/* end function parsetoml_parsetoml_scan_elem */

.text
.balign 16
parsetoml_parsetoml_strip_comment:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	donna_string_length
	mov	x2, x0
	mov	x0, x19
	mov	x3, #0
	mov	x1, #0
	bl	parsetoml_parsetoml_sc_loop
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type parsetoml_parsetoml_strip_comment, @function
.size parsetoml_parsetoml_strip_comment, .-parsetoml_parsetoml_strip_comment
/* end function parsetoml_parsetoml_strip_comment */

.text
.balign 16
parsetoml_parsetoml_sc_loop:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x3
	cmp	x1, x2
	mov	x21, x2
	cset	x2, ge
	cmp	x2, #1
	beq	.L393
	mov	x20, x1
	mov	x19, x0
	bl	donna_string_char_at
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x4, x0
	mov	x0, x19
	cmp	x3, #0
	cset	x6, ne
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	mov	x5, #1
	add	x5, x1, x5
	cmp	x6, #1
	beq	.L385
	mov	x3, x4
	mov	x4, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x20, sp
	cmp	x3, #34
	beq	.L382
	cmp	x3, #39
	beq	.L380
	cmp	x3, #35
	beq	.L379
	mov	x1, x4
	mov	x3, #0
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x20]
	b	.L384
.L379:
	mov	x2, x1
	mov	x1, #0
	bl	donna_string_slice
	bl	donna_string_trim
	str	x0, [x20]
	b	.L384
.L380:
	mov	x1, x4
	mov	x3, #39
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x20]
	b	.L384
.L382:
	mov	x1, x4
	mov	x3, #34
	mov	x5, x1
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x20]
.L384:
	str	x0, [x19]
	b	.L393
.L385:
	cmp	x4, #92
	cset	x6, eq
	cmp	x3, #34
	cset	x7, eq
	and	x6, x6, x7
	mov	x7, #16
	sub	sp, sp, x7
	mov	x20, sp
	cmp	x6, #1
	beq	.L391
	mov	x1, x5
	cmp	x3, x4
	cset	x4, eq
	mov	x5, #16
	sub	sp, sp, x5
	mov	x21, sp
	cmp	x4, #1
	beq	.L389
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x21]
	b	.L390
.L389:
	mov	x3, #0
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x21]
.L390:
	str	x0, [x20]
	b	.L392
.L391:
	mov	x4, #2
	add	x1, x1, x4
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x20]
.L392:
	str	x0, [x19]
.L393:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_sc_loop, @function
.size parsetoml_parsetoml_sc_loop, .-parsetoml_parsetoml_sc_loop
/* end function parsetoml_parsetoml_sc_loop */

.text
.balign 16
parsetoml_parsetoml_all_digits:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	cmp	x1, x2
	mov	x21, x2
	cset	x2, ge
	cmp	x2, #1
	beq	.L399
	mov	x20, x1
	mov	x19, x0
	bl	donna_string_char_at
	mov	x2, x21
	mov	x1, x20
	mov	x4, x0
	mov	x0, x19
	cmp	x4, #48
	cset	x3, ge
	cmp	x4, #57
	cset	x4, le
	and	x3, x3, x4
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	.L398
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L400
.L398:
	mov	x3, #1
	add	x1, x1, x3
	bl	parsetoml_parsetoml_all_digits
	str	x0, [x19]
	b	.L400
.L399:
	mov	x0, #1
.L400:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_all_digits, @function
.size parsetoml_parsetoml_all_digits, .-parsetoml_parsetoml_all_digits
/* end function parsetoml_parsetoml_all_digits */

.text
.balign 16
parsetoml_parsetoml_parse_digits:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x3
	cmp	x1, x2
	mov	x22, x2
	cset	x2, ge
	cmp	x2, #1
	beq	.L406
	mov	x21, x1
	mov	x19, x0
	bl	donna_string_char_at
	mov	x2, x22
	mov	x1, x21
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #48
	cset	x4, ge
	cmp	x3, #57
	cset	x5, le
	and	x4, x4, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	cmp	x4, #1
	beq	.L405
	str	x20, [x19]
	mov	x0, x20
	b	.L407
.L405:
	mov	x4, #1
	add	x1, x1, x4
	mov	x4, #10
	mul	x4, x20, x4
	add	x3, x3, x4
	mov	x4, #48
	sub	x3, x3, x4
	bl	parsetoml_parsetoml_parse_digits
	str	x0, [x19]
	b	.L407
.L406:
	mov	x0, x20
.L407:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_parse_digits, @function
.size parsetoml_parsetoml_parse_digits, .-parsetoml_parsetoml_parse_digits
/* end function parsetoml_parsetoml_parse_digits */

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
