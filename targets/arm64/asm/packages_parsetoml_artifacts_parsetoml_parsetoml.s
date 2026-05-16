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
str45:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str47:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str63:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str65:
	.ascii "' is not a string"
	.byte 0
/* end data */

.data
.balign 8
str78:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str80:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str96:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str98:
	.ascii "' is not an integer"
	.byte 0
/* end data */

.data
.balign 8
str111:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str113:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str129:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str131:
	.ascii "' is not a boolean"
	.byte 0
/* end data */

.data
.balign 8
str144:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str146:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str162:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str164:
	.ascii "' is not a table"
	.byte 0
/* end data */

.data
.balign 8
str177:
	.ascii "key '"
	.byte 0
/* end data */

.data
.balign 8
str179:
	.ascii "' not found"
	.byte 0
/* end data */

.data
.balign 8
str195:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str197:
	.ascii "' is not an array"
	.byte 0
/* end data */

.data
.balign 8
str226:
	.ascii "__err:"
	.byte 0
/* end data */

.data
.balign 8
str281:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str308:
	.ascii "[["
	.byte 0
/* end data */

.data
.balign 8
str318:
	.ascii "["
	.byte 0
/* end data */

.data
.balign 8
str361:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str363:
	.ascii "#"
	.byte 0
/* end data */

.data
.balign 8
str375:
	.ascii "unclosed '[' in: "
	.byte 0
/* end data */

.data
.balign 8
str382:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str397:
	.ascii "expected '=' in: "
	.byte 0
/* end data */

.data
.balign 8
str444:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str451:
	.ascii "empty key"
	.byte 0
/* end data */

.data
.balign 8
str454:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str466:
	.ascii "empty value"
	.byte 0
/* end data */

.data
.balign 8
str492:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str517:
	.ascii "unterminated string"
	.byte 0
/* end data */

.data
.balign 8
str538:
	.ascii "unexpected end after "
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
str548:
	.byte 34
	.byte 0
/* end data */

.data
.balign 8
str552:
	.byte 92
	.byte 0
/* end data */

.data
.balign 8
str556:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str560:
	.byte 9
	.byte 0
/* end data */

.data
.balign 8
str564:
	.byte 13
	.byte 0
/* end data */

.data
.balign 8
str585:
	.ascii "unterminated literal string"
	.byte 0
/* end data */

.data
.balign 8
str596:
	.ascii "unterminated literal string"
	.byte 0
/* end data */

.data
.balign 8
str611:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str690:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str748:
	.ascii "expected '=' in pair: "
	.byte 0
/* end data */

.data
.balign 8
str789:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
str800:
	.ascii "false"
	.byte 0
/* end data */

.data
.balign 8
str820:
	.ascii "empty integer"
	.byte 0
/* end data */

.data
.balign 8
str837:
	.ascii "invalid integer: "
	.byte 0
/* end data */

.data
.balign 8
str847:
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
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
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L21
.L20:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L21:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
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
	str	x20, [x29, 16]
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
	adrp	x0, str63
	add	x0, x0, #:lo12:str63
	bl	__rt_str_concat
	adrp	x1, str65
	add	x1, x1, #:lo12:str65
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L27
.L25:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L27
.L26:
	adrp	x0, str45
	add	x0, x0, #:lo12:str45
	bl	__rt_str_concat
	adrp	x1, str47
	add	x1, x1, #:lo12:str47
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L27:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
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
	str	x20, [x29, 16]
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
	adrp	x0, str96
	add	x0, x0, #:lo12:str96
	bl	__rt_str_concat
	adrp	x1, str98
	add	x1, x1, #:lo12:str98
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L33
.L31:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L33
.L32:
	adrp	x0, str78
	add	x0, x0, #:lo12:str78
	bl	__rt_str_concat
	adrp	x1, str80
	add	x1, x1, #:lo12:str80
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L33:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
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
	str	x20, [x29, 16]
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
	adrp	x0, str129
	add	x0, x0, #:lo12:str129
	bl	__rt_str_concat
	adrp	x1, str131
	add	x1, x1, #:lo12:str131
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L39
.L37:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L39
.L38:
	adrp	x0, str111
	add	x0, x0, #:lo12:str111
	bl	__rt_str_concat
	adrp	x1, str113
	add	x1, x1, #:lo12:str113
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L39:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
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
	str	x20, [x29, 16]
	mov	x19, x1
	bl	parsetoml_parsetoml_table_lookup
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L44
	mov	x2, #8
	add	x0, x0, x2
	ldr	x20, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x20]
	cmp	x0, #4
	beq	.L43
	adrp	x0, str162
	add	x0, x0, #:lo12:str162
	bl	__rt_str_concat
	adrp	x1, str164
	add	x1, x1, #:lo12:str164
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L45
.L43:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L45
.L44:
	adrp	x0, str144
	add	x0, x0, #:lo12:str144
	bl	__rt_str_concat
	adrp	x1, str146
	add	x1, x1, #:lo12:str146
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L45:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
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
	str	x20, [x29, 16]
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
	adrp	x0, str195
	add	x0, x0, #:lo12:str195
	bl	__rt_str_concat
	adrp	x1, str197
	add	x1, x1, #:lo12:str197
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L51
.L49:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L51
.L50:
	adrp	x0, str177
	add	x0, x0, #:lo12:str177
	bl	__rt_str_concat
	adrp	x1, str179
	add	x1, x1, #:lo12:str179
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L51:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
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
	mov	x0, #16
	bl	malloc
	mov	x1, #4
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
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
	adrp	x0, str226
	add	x0, x0, #:lo12:str226
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
	adrp	x0, str281
	add	x0, x0, #:lo12:str281
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
	mov	x21, x1
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L85
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x22, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	donna_string_trim
	mov	x19, x0
	bl	parsetoml_parsetoml_is_empty_or_comment
	mov	x2, x22
	mov	x1, x21
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	.L83
	mov	x3, x2
	mov	x2, x1
	mov	x1, x20
	bl	parsetoml_parsetoml_process_line
	str	x0, [x19]
	b	.L87
.L83:
	mov	x0, x20
	bl	parsetoml_parsetoml_parse_doc
	str	x0, [x19]
	b	.L87
.L85:
	mov	x19, x2
	mov	x0, #16
	bl	malloc
	mov	x2, x19
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x2, [x1]
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
	adrp	x1, str308
	add	x1, x1, #:lo12:str308
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
	adrp	x1, str318
	add	x1, x1, #:lo12:str318
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
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
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
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
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
	adrp	x1, str361
	add	x1, x1, #:lo12:str361
	mov	x19, x0
	bl	donna_string_equal
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, str363
	add	x1, x1, #:lo12:str363
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
	adrp	x1, str382
	add	x1, x1, #:lo12:str382
	bl	donna_string_split
	adrp	x1, parsetoml_parsetoml_trim_str
	add	x1, x1, #:lo12:parsetoml_parsetoml_trim_str
	bl	donna_list_map
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L112
.L111:
	adrp	x0, str375
	add	x0, x0, #:lo12:str375
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
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
	ldr	x22, [x2]
	bl	donna_list_append
	mov	x23, x0
	mov	x0, #16
	bl	malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L119
.L117:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L119:
	str	x0, [x19]
	b	.L123
.L120:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L123
.L122:
	adrp	x0, str397
	add	x0, x0, #:lo12:str397
	bl	__rt_str_concat
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L123:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
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
	adrp	x1, str444
	add	x1, x1, #:lo12:str444
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L126
	adrp	x1, str454
	add	x1, x1, #:lo12:str454
	bl	donna_string_split
	adrp	x1, parsetoml_parsetoml_trim_str
	add	x1, x1, #:lo12:parsetoml_parsetoml_trim_str
	bl	donna_list_map
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L127
.L126:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str451
	add	x1, x1, #:lo12:str451
	str	x1, [x2]
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
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str466
	add	x1, x1, #:lo12:str466
	str	x1, [x2]
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
	str	x20, [x29, 16]
	mov	x19, x0
	bl	donna_string_length
	mov	x2, x0
	mov	x0, x19
	adrp	x3, str492
	add	x3, x3, #:lo12:str492
	mov	x1, #1
	bl	parsetoml_parsetoml_read_dq
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L142
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x19, x0
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L143
.L142:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L143:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
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
	mov	x23, x3
	mov	x21, x2
	mov	x20, x1
	cmp	x20, x21
	cset	x1, ge
	cmp	x1, #1
	beq	.L176
	mov	x1, x20
	mov	x19, x0
	bl	donna_string_char_at
	mov	x2, x21
	mov	x3, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x3, #34
	beq	.L174
	mov	x1, #1
	add	x1, x20, x1
	cmp	x3, #92
	beq	.L148
	mov	x22, x2
	mov	x2, #1
	mov	x21, x1
	mov	x1, x20
	mov	x20, x0
	bl	donna_string_slice
	mov	x3, x23
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x3
	bl	__rt_str_concat
	mov	x2, x22
	mov	x1, x21
	mov	x3, x0
	mov	x0, x20
	bl	parsetoml_parsetoml_read_dq
	str	x0, [x19]
	b	.L177
.L148:
	mov	x3, x23
	mov	x21, x20
	cmp	x1, x2
	mov	x24, x2
	cset	x2, ge
	mov	x25, x3
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	.L172
	mov	x23, x1
	mov	x22, x0
	bl	donna_string_char_at
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, x22
	mov	x4, #16
	sub	sp, sp, x4
	mov	x22, sp
	cmp	x3, #34
	beq	.L168
	cmp	x3, #92
	beq	.L165
	cmp	x3, #110
	beq	.L162
	cmp	x3, #116
	beq	.L159
	cmp	x3, #114
	beq	.L156
	mov	x24, x2
	mov	x2, #1
	mov	x23, x0
	bl	donna_string_slice
	mov	x3, x25
	mov	x2, x24
	mov	x1, x0
	mov	x0, x23
	str	x1, [x22]
	b	.L171
.L156:
	mov	x3, x25
	adrp	x1, str564
	add	x1, x1, #:lo12:str564
	str	x1, [x22]
	adrp	x1, str564
	add	x1, x1, #:lo12:str564
	b	.L171
.L159:
	mov	x3, x25
	adrp	x1, str560
	add	x1, x1, #:lo12:str560
	str	x1, [x22]
	adrp	x1, str560
	add	x1, x1, #:lo12:str560
	b	.L171
.L162:
	mov	x3, x25
	adrp	x1, str556
	add	x1, x1, #:lo12:str556
	str	x1, [x22]
	adrp	x1, str556
	add	x1, x1, #:lo12:str556
	b	.L171
.L165:
	mov	x3, x25
	adrp	x1, str552
	add	x1, x1, #:lo12:str552
	str	x1, [x22]
	adrp	x1, str552
	add	x1, x1, #:lo12:str552
	b	.L171
.L168:
	mov	x3, x25
	adrp	x1, str548
	add	x1, x1, #:lo12:str548
	str	x1, [x22]
	adrp	x1, str548
	add	x1, x1, #:lo12:str548
.L171:
	mov	x23, x2
	mov	x2, #2
	add	x22, x21, x2
	mov	x21, x0
	mov	x0, x3
	bl	__rt_str_concat
	mov	x2, x23
	mov	x1, x22
	mov	x3, x0
	mov	x0, x21
	bl	parsetoml_parsetoml_read_dq
	str	x0, [x20]
	b	.L173
.L172:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str538
	add	x1, x1, #:lo12:str538
	str	x1, [x2]
	str	x0, [x20]
.L173:
	str	x0, [x19]
	b	.L177
.L174:
	mov	x20, x23
	mov	x0, #16
	bl	malloc
	mov	x3, x20
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x3, [x1]
	str	x0, [x19]
	b	.L177
.L176:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str517
	add	x1, x1, #:lo12:str517
	str	x1, [x2]
.L177:
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	bl	donna_string_length
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #2
	cset	x1, lt
	cmp	x1, #1
	beq	.L182
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
	beq	.L181
	mov	x2, #1
	sub	x2, x1, x2
	mov	x1, #1
	bl	donna_string_slice
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	mov	x20, x0
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L183
.L181:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str596
	add	x1, x1, #:lo12:str596
	str	x1, [x2]
	str	x0, [x19]
	b	.L183
.L182:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str585
	add	x1, x1, #:lo12:str585
	str	x1, [x2]
.L183:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type parsetoml_parsetoml_parse_sq_string, @function
.size parsetoml_parsetoml_parse_sq_string, .-parsetoml_parsetoml_parse_sq_string
/* end function parsetoml_parsetoml_parse_sq_string */

.text
.balign 16
parsetoml_parsetoml_parse_array:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #2
	sub	x2, x1, x2
	mov	x1, #1
	bl	donna_string_slice
	bl	donna_string_trim
	adrp	x1, str611
	add	x1, x1, #:lo12:str611
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L188
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
	beq	.L187
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x20, x0
	mov	x0, #3
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L189
.L187:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L189
.L188:
	mov	x0, #16
	bl	malloc
	mov	x19, x0
	mov	x0, #3
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L189:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
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
	beq	.L199
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
	beq	.L197
	mov	x3, #8
	add	x2, x2, x3
	ldr	x22, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x20, #1
	beq	.L195
	str	x1, [x2]
	mov	x20, x1
	b	.L196
.L195:
	mov	x20, x1
	mov	x1, #1
	add	x1, x23, x1
	str	x1, [x2]
.L196:
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
	b	.L201
.L197:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L201
.L199:
	mov	x0, x21
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L201:
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #2
	sub	x2, x1, x2
	mov	x1, #1
	bl	donna_string_slice
	bl	donna_string_trim
	adrp	x1, str690
	add	x1, x1, #:lo12:str690
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L206
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
	beq	.L205
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x20, x0
	mov	x0, #4
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L207
.L205:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L207
.L206:
	mov	x0, #16
	bl	malloc
	mov	x19, x0
	mov	x0, #4
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L207:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
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
	beq	.L220
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
	beq	.L219
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
	beq	.L216
	mov	x3, #8
	add	x2, x2, x3
	ldr	x24, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x21, #1
	beq	.L214
	str	x1, [x2]
	mov	x21, x1
	b	.L215
.L214:
	mov	x21, x1
	mov	x1, #1
	add	x1, x23, x1
	str	x1, [x2]
.L215:
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
	b	.L218
.L216:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L218:
	str	x0, [x19]
	b	.L222
.L219:
	adrp	x0, str748
	add	x0, x0, #:lo12:str748
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L222
.L220:
	mov	x0, x22
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L222:
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
	str	x20, [x29, 16]
	adrp	x1, str789
	add	x1, x1, #:lo12:str789
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L227
	adrp	x1, str800
	add	x1, x1, #:lo12:str800
	mov	x19, x0
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L226
	bl	parsetoml_parsetoml_parse_int
	str	x0, [x19]
	b	.L228
.L226:
	mov	x0, #16
	bl	malloc
	mov	x20, x0
	mov	x0, #2
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L228
.L227:
	mov	x0, #16
	bl	malloc
	mov	x19, x0
	mov	x0, #2
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L228:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
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
	beq	.L247
	mov	x19, x1
	mov	x1, #0
	mov	x0, x19
	bl	donna_string_char_at
	mov	x2, x20
	mov	x1, x19
	mov	x24, x0
	cmp	x24, #45
	cset	x22, eq
	mov	x0, #16
	mov	x21, x1
	sub	sp, sp, x0
	mov	x1, sp
	cmp	x22, #1
	beq	.L233
	mov	x0, #0
	str	x0, [x1]
	mov	x1, #0
	b	.L235
.L233:
	mov	x0, #1
	str	x0, [x1]
	mov	x1, #1
.L235:
	cmp	x1, x2
	cset	x0, ge
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x0, #1
	beq	.L245
	mov	x23, x2
	mov	x20, x1
	mov	x0, x21
	bl	parsetoml_parsetoml_all_digits
	mov	x2, x23
	mov	x1, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x0, #0
	beq	.L242
	mov	x3, #0
	mov	x0, x21
	bl	parsetoml_parsetoml_parse_digits
	mov	x23, x0
	mov	x0, #16
	sub	sp, sp, x0
	mov	x21, sp
	cmp	x24, #45
	cmp	x22, #1
	beq	.L239
	mov	x0, #16
	bl	malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	.L241
.L239:
	mov	x22, x23
	mov	x0, #0
	sub	x23, x0, x22
	mov	x0, #16
	bl	malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
.L241:
	str	x0, [x20]
	b	.L244
.L242:
	mov	x1, x21
	adrp	x0, str847
	add	x0, x0, #:lo12:str847
	bl	__rt_str_concat
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L244:
	str	x0, [x19]
	b	.L248
.L245:
	mov	x1, x21
	adrp	x0, str837
	add	x0, x0, #:lo12:str837
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L248
.L247:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str820
	add	x1, x1, #:lo12:str820
	str	x1, [x2]
.L248:
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	parsetoml_parsetoml_fold_entries
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
	beq	.L253
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
.L253:
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
	beq	.L268
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x3, #1
	beq	.L258
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L259
.L258:
	mov	x3, #16
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L259:
	cmp	w3, #0
	bne	.L267
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x22, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	bl	parsetoml_parsetoml_get_sub_pairs
	mov	x2, x22
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	ldr	x5, [x3]
	cmp	x5, #1
	beq	.L263
	mov	x5, #8
	add	x3, x3, x5
	ldr	x3, [x3]
	str	x3, [x4]
	mov	x19, x0
	b	.L266
.L263:
	mov	x3, x4
	mov	x19, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x3]
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
.L266:
	mov	x0, x3
	bl	parsetoml_parsetoml_set_nested
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x3, #4
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x19, [x3]
	bl	parsetoml_parsetoml_upsert
	b	.L268
.L267:
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	bl	parsetoml_parsetoml_upsert
.L268:
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
	beq	.L276
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
	beq	.L274
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
	b	.L278
.L274:
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
	b	.L278
.L276:
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
.L278:
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
	beq	.L287
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
	beq	.L282
	bl	parsetoml_parsetoml_get_sub_pairs
	str	x0, [x19]
	b	.L288
.L282:
	mov	x0, #16
	sub	sp, sp, x0
	mov	x20, sp
	ldr	x0, [x21]
	cmp	x0, #4
	beq	.L285
	adrp	x0, parsetoml_parsetoml_NoPairs
	add	x0, x0, #:lo12:parsetoml_parsetoml_NoPairs
	str	x0, [x20]
	adrp	x0, parsetoml_parsetoml_NoPairs
	add	x0, x0, #:lo12:parsetoml_parsetoml_NoPairs
	b	.L286
.L285:
	mov	x0, #8
	add	x0, x21, x0
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L286:
	str	x0, [x19]
	b	.L288
.L287:
	adrp	x0, parsetoml_parsetoml_NoPairs
	add	x0, x0, #:lo12:parsetoml_parsetoml_NoPairs
.L288:
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
	beq	.L291
	adrp	x0, parsetoml_parsetoml_NotFound
	add	x0, x0, #:lo12:parsetoml_parsetoml_NotFound
	b	.L292
.L291:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	parsetoml_parsetoml_lookup_pairs
.L292:
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
	beq	.L297
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
	beq	.L296
	bl	parsetoml_parsetoml_lookup_pairs
	str	x0, [x19]
	b	.L298
.L296:
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L298
.L297:
	adrp	x0, parsetoml_parsetoml_NotFound
	add	x0, x0, #:lo12:parsetoml_parsetoml_NotFound
.L298:
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
	beq	.L306
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
	beq	.L305
	str	x20, [x19]
	mov	x0, x20
	b	.L307
.L305:
	mov	x1, #1
	add	x1, x20, x1
	bl	parsetoml_parsetoml_skip_ws
	str	x0, [x19]
	b	.L307
.L306:
	mov	x0, x20
.L307:
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
	beq	.L329
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
	beq	.L322
	cmp	x1, x5
	cset	x4, eq
	mov	x6, #16
	sub	sp, sp, x6
	mov	x20, sp
	cmp	x4, #1
	beq	.L319
	mov	x4, #16
	sub	sp, sp, x4
	mov	x21, sp
	cmp	x5, #34
	beq	.L317
	cmp	x5, #39
	beq	.L316
	mov	x4, #0
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x21]
	b	.L318
.L316:
	mov	x4, #39
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x21]
	b	.L318
.L317:
	mov	x4, #34
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x21]
.L318:
	str	x0, [x20]
	b	.L321
.L319:
	str	x21, [x20]
	mov	x0, x21
.L321:
	str	x0, [x19]
	b	.L330
.L322:
	cmp	x5, #92
	cset	x6, eq
	cmp	x4, #34
	cset	x7, eq
	and	x6, x6, x7
	mov	x7, #16
	sub	sp, sp, x7
	mov	x20, sp
	cmp	x6, #1
	beq	.L327
	cmp	x4, x5
	cset	x5, eq
	mov	x6, #16
	sub	sp, sp, x6
	mov	x21, sp
	cmp	x5, #1
	beq	.L325
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x21]
	b	.L326
.L325:
	mov	x4, #0
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x21]
.L326:
	str	x0, [x20]
	b	.L328
.L327:
	mov	x2, #2
	add	x2, x21, x2
	bl	parsetoml_parsetoml_fos_loop
	str	x0, [x20]
.L328:
	str	x0, [x19]
	b	.L330
.L329:
	mov	x0, #-1
.L330:
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
	beq	.L336
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
	beq	.L334
	mov	x2, #1
	add	x2, x20, x2
	bl	parsetoml_parsetoml_find_char
	str	x0, [x19]
	b	.L337
.L334:
	mov	x0, x20
	str	x0, [x19]
	b	.L337
.L336:
	mov	x0, #-1
.L337:
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
	beq	.L372
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
	beq	.L363
	mov	x4, #16
	sub	sp, sp, x4
	mov	x20, sp
	cmp	x5, #34
	beq	.L361
	cmp	x5, #39
	beq	.L360
	mov	x4, #1
	add	x6, x3, x4
	cmp	x5, #91
	beq	.L358
	cmp	x5, #123
	beq	.L356
	mov	x4, #1
	sub	x6, x3, x4
	cmp	x5, #93
	beq	.L354
	cmp	x5, #125
	beq	.L352
	cmp	x5, #44
	beq	.L348
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L362
.L348:
	cmp	x3, #0
	cset	x4, eq
	mov	x5, #16
	sub	sp, sp, x5
	mov	x21, sp
	cmp	x4, #1
	beq	.L350
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x21]
	b	.L351
.L350:
	mov	x0, #16
	bl	malloc
	mov	x1, x22
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x21]
.L351:
	str	x0, [x20]
	b	.L362
.L352:
	mov	x3, x6
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L362
.L354:
	mov	x3, x6
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L362
.L356:
	mov	x3, x6
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L362
.L358:
	mov	x3, x6
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L362
.L360:
	mov	x4, #39
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
	b	.L362
.L361:
	mov	x4, #34
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
.L362:
	str	x0, [x19]
	b	.L374
.L363:
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
	beq	.L369
	cmp	x4, x5
	cset	x5, eq
	mov	x6, #16
	sub	sp, sp, x6
	mov	x21, sp
	cmp	x5, #1
	beq	.L367
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x21]
	b	.L368
.L367:
	mov	x4, #0
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x21]
.L368:
	str	x0, [x20]
	b	.L371
.L369:
	mov	x1, x21
	mov	x5, #2
	add	x1, x1, x5
	bl	parsetoml_parsetoml_scan_elem
	str	x0, [x20]
.L371:
	str	x0, [x19]
	b	.L374
.L372:
	mov	x19, x21
	mov	x0, #16
	bl	malloc
	mov	x2, x19
	str	x2, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #0
	str	x1, [x2]
.L374:
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
	beq	.L399
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
	beq	.L391
	mov	x3, x4
	mov	x4, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x20, sp
	cmp	x3, #34
	beq	.L388
	cmp	x3, #39
	beq	.L386
	cmp	x3, #35
	beq	.L385
	mov	x1, x4
	mov	x3, #0
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x20]
	b	.L390
.L385:
	mov	x2, x1
	mov	x1, #0
	bl	donna_string_slice
	bl	donna_string_trim
	str	x0, [x20]
	b	.L390
.L386:
	mov	x1, x4
	mov	x3, #39
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x20]
	b	.L390
.L388:
	mov	x1, x4
	mov	x3, #34
	mov	x5, x1
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x20]
.L390:
	str	x0, [x19]
	b	.L399
.L391:
	cmp	x4, #92
	cset	x6, eq
	cmp	x3, #34
	cset	x7, eq
	and	x6, x6, x7
	mov	x7, #16
	sub	sp, sp, x7
	mov	x20, sp
	cmp	x6, #1
	beq	.L397
	mov	x1, x5
	cmp	x3, x4
	cset	x4, eq
	mov	x5, #16
	sub	sp, sp, x5
	mov	x21, sp
	cmp	x4, #1
	beq	.L395
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x21]
	b	.L396
.L395:
	mov	x3, #0
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x21]
.L396:
	str	x0, [x20]
	b	.L398
.L397:
	mov	x4, #2
	add	x1, x1, x4
	bl	parsetoml_parsetoml_sc_loop
	str	x0, [x20]
.L398:
	str	x0, [x19]
.L399:
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
	beq	.L405
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
	beq	.L404
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L406
.L404:
	mov	x3, #1
	add	x1, x1, x3
	bl	parsetoml_parsetoml_all_digits
	str	x0, [x19]
	b	.L406
.L405:
	mov	x0, #1
.L406:
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
	beq	.L412
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
	beq	.L411
	str	x20, [x19]
	mov	x0, x20
	b	.L413
.L411:
	mov	x4, #1
	add	x1, x1, x4
	mov	x4, #10
	mul	x4, x20, x4
	add	x3, x3, x4
	mov	x4, #48
	sub	x3, x3, x4
	bl	parsetoml_parsetoml_parse_digits
	str	x0, [x19]
	b	.L413
.L412:
	mov	x0, x20
.L413:
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
