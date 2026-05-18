.data
.balign 8
str60:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str80:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str298:
	.ascii "@external "
	.byte 0
/* end data */

.data
.balign 8
str350:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str372:
	.ascii "pub "
	.byte 0
/* end data */

.data
.balign 8
str373:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str376:
	.ascii ", "
	.byte 0
/* end data */

.data
.balign 8
str384:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str387:
	.ascii " -> "
	.byte 0
/* end data */

.data
.balign 8
str391:
	.ascii "fn "
	.byte 0
/* end data */

.data
.balign 8
str394:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str397:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str441:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str499:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str509:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str526:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str562:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str577:
	.ascii "///"
	.byte 0
/* end data */

.data
.balign 8
str594:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str606:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str623:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl tools_docgen_extractor_DocCtor
tools_docgen_extractor_DocCtor:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #32
	bl	malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #0
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x19, [x3]
	mov	x3, #16
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type tools_docgen_extractor_DocCtor, @function
.size tools_docgen_extractor_DocCtor, .-tools_docgen_extractor_DocCtor
/* end function tools_docgen_extractor_DocCtor */

.text
.balign 16
.globl tools_docgen_extractor_DocFn
tools_docgen_extractor_DocFn:
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
	mov	x19, x0
	mov	x0, #40
	bl	malloc
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x4, #0
	str	x4, [x0]
	mov	x4, #8
	add	x4, x0, x4
	str	x19, [x4]
	mov	x4, #16
	add	x4, x0, x4
	str	x1, [x4]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type tools_docgen_extractor_DocFn, @function
.size tools_docgen_extractor_DocFn, .-tools_docgen_extractor_DocFn
/* end function tools_docgen_extractor_DocFn */

.text
.balign 16
.globl tools_docgen_extractor_DocExternalFn
tools_docgen_extractor_DocExternalFn:
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
	mov	x19, x0
	mov	x0, #40
	bl	malloc
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x4, #1
	str	x4, [x0]
	mov	x4, #8
	add	x4, x0, x4
	str	x19, [x4]
	mov	x4, #16
	add	x4, x0, x4
	str	x1, [x4]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type tools_docgen_extractor_DocExternalFn, @function
.size tools_docgen_extractor_DocExternalFn, .-tools_docgen_extractor_DocExternalFn
/* end function tools_docgen_extractor_DocExternalFn */

.text
.balign 16
.globl tools_docgen_extractor_DocType
tools_docgen_extractor_DocType:
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
	mov	x20, x1
	mov	x19, x0
	mov	x0, #48
	bl	malloc
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x5, #2
	str	x5, [x0]
	mov	x5, #8
	add	x5, x0, x5
	str	x19, [x5]
	mov	x5, #16
	add	x5, x0, x5
	str	x1, [x5]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x4, [x1]
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type tools_docgen_extractor_DocType, @function
.size tools_docgen_extractor_DocType, .-tools_docgen_extractor_DocType
/* end function tools_docgen_extractor_DocType */

.text
.balign 16
.globl tools_docgen_extractor_DocConst
tools_docgen_extractor_DocConst:
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
	mov	x19, x0
	mov	x0, #40
	bl	malloc
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x4, #3
	str	x4, [x0]
	mov	x4, #8
	add	x4, x0, x4
	str	x19, [x4]
	mov	x4, #16
	add	x4, x0, x4
	str	x1, [x4]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type tools_docgen_extractor_DocConst, @function
.size tools_docgen_extractor_DocConst, .-tools_docgen_extractor_DocConst
/* end function tools_docgen_extractor_DocConst */

.text
.balign 16
.globl tools_docgen_extractor_DocModule
tools_docgen_extractor_DocModule:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x24, x5
	mov	x23, x4
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #56
	bl	malloc
	mov	x5, x24
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x6, #0
	str	x6, [x0]
	mov	x6, #8
	add	x6, x0, x6
	str	x19, [x6]
	mov	x6, #16
	add	x6, x0, x6
	str	x1, [x6]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x4, [x1]
	mov	x1, #48
	add	x1, x0, x1
	str	x5, [x1]
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
.type tools_docgen_extractor_DocModule, @function
.size tools_docgen_extractor_DocModule, .-tools_docgen_extractor_DocModule
/* end function tools_docgen_extractor_DocModule */

.text
.balign 16
.globl tools_docgen_extractor_extract
tools_docgen_extractor_extract:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	bl	tools_docgen_extractor_scan_doc_comments
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_lexer_lexer_lex
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L17
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parser_parse
	mov	x2, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L15
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	tools_docgen_extractor_extract_from_ast
	str	x0, [x19]
	b	.L19
.L15:
	mov	x0, x20
	bl	tools_docgen_extractor_empty_doc_module
	str	x0, [x19]
	b	.L19
.L17:
	mov	x0, x20
	bl	tools_docgen_extractor_empty_doc_module
.L19:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type tools_docgen_extractor_extract, @function
.size tools_docgen_extractor_extract, .-tools_docgen_extractor_extract
/* end function tools_docgen_extractor_extract */

.text
.balign 16
tools_docgen_extractor_empty_doc_module:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #56
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str60
	add	x1, x1, #:lo12:str60
	str	x1, [x2]
	mov	x1, #24
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #32
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #40
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #48
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type tools_docgen_extractor_empty_doc_module, @function
.size tools_docgen_extractor_empty_doc_module, .-tools_docgen_extractor_empty_doc_module
/* end function tools_docgen_extractor_empty_doc_module */

.text
.balign 16
tools_docgen_extractor_extract_from_ast:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x24, x1
	mov	x1, x2
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #24
	add	x3, x2, x3
	ldr	x20, [x3]
	mov	x3, #32
	add	x3, x2, x3
	ldr	x21, [x3]
	mov	x3, #40
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x22, x1
	adrp	x1, str80
	add	x1, x1, #:lo12:str80
	bl	donna_string_join
	mov	x1, x22
	mov	x23, x0
	mov	x0, x21
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x21, x1
	bl	tools_docgen_extractor_extract_types
	mov	x1, x21
	mov	x22, x0
	mov	x0, x20
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x21, x1
	mov	x20, x0
	mov	x0, x19
	bl	tools_docgen_extractor_extract_regular_fns
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x20, x1
	bl	tools_docgen_extractor_extract_consts
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	tools_docgen_extractor_extract_external_fns
	mov	x19, x0
	mov	x0, #56
	bl	malloc
	mov	x1, x24
	mov	x2, #0
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #48
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
.type tools_docgen_extractor_extract_from_ast, @function
.size tools_docgen_extractor_extract_from_ast, .-tools_docgen_extractor_extract_from_ast
/* end function tools_docgen_extractor_extract_from_ast */

.text
.balign 16
tools_docgen_extractor_extract_types:
	hint	#34
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [x29, 120]
	str	x20, [x29, 112]
	str	x21, [x29, 104]
	str	x22, [x29, 96]
	str	x23, [x29, 88]
	str	x24, [x29, 80]
	str	x25, [x29, 72]
	str	x26, [x29, 64]
	str	x27, [x29, 56]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x21, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L36
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x24, sp
	str	x24, [x29, 24]
	mov	x2, #8
	add	x2, x0, x2
	ldr	x27, [x2]
	mov	x2, #16
	add	x2, x0, x2
	ldr	x26, [x2]
	mov	x2, #24
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x2, #32
	add	x2, x0, x2
	ldr	x25, [x2]
	mov	x2, #40
	add	x2, x0, x2
	ldr	x3, [x2]
	str	x3, [x29, 32]
	mov	x2, #48
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x22, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	cmp	x26, #0
	beq	.L33
	bl	tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	tools_docgen_extractor_find_doc
	mov	x1, x22
	str	x0, [x29, 16]
	mov	x0, x19
	mov	x22, x0
	ldr	x0, [x29, 32]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x23, #1
	beq	.L29
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x23, x1
	bl	tools_docgen_extractor_extract_ctors
	mov	x1, x23
	mov	x23, x0
	mov	x0, x22
	str	x23, [x19]
	mov	x22, x1
	b	.L32
.L29:
	mov	x0, x22
	mov	x22, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x19]
	adrp	x23, donna_nil
	add	x23, x23, #:lo12:donna_nil
.L32:
	mov	x19, x0
	mov	x0, #48
	bl	malloc
	mov	x1, x22
	mov	x22, x0
	mov	x0, x19
	ldr	x19, [x29, 24]
	mov	x24, x1
	ldr	x1, [x29, 16]
	mov	x2, #2
	str	x2, [x22]
	mov	x2, #8
	add	x2, x22, x2
	str	x27, [x2]
	mov	x2, #16
	add	x2, x22, x2
	str	x26, [x2]
	mov	x2, #24
	add	x2, x22, x2
	str	x25, [x2]
	mov	x2, #32
	add	x2, x22, x2
	str	x23, [x2]
	mov	x2, #40
	add	x2, x22, x2
	str	x1, [x2]
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x22, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x21, [x3]
	bl	tools_docgen_extractor_extract_types
	str	x0, [x20]
	b	.L35
.L33:
	mov	x0, x19
	mov	x19, x24
	mov	x1, x22
	mov	x2, x21
	bl	tools_docgen_extractor_extract_types
	str	x0, [x20]
.L35:
	str	x0, [x19]
	b	.L38
.L36:
	mov	x0, x21
	bl	donna_list_reverse
.L38:
	ldr	x19, [x29, 120]
	ldr	x20, [x29, 112]
	ldr	x21, [x29, 104]
	ldr	x22, [x29, 96]
	ldr	x23, [x29, 88]
	ldr	x24, [x29, 80]
	ldr	x25, [x29, 72]
	ldr	x26, [x29, 64]
	ldr	x27, [x29, 56]
	mov sp, x29
	ldp	x29, x30, [sp], 128
	ret
.type tools_docgen_extractor_extract_types, @function
.size tools_docgen_extractor_extract_types, .-tools_docgen_extractor_extract_types
/* end function tools_docgen_extractor_extract_types */

.text
.balign 16
tools_docgen_extractor_extract_ctors:
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
	mov	x25, x1
	mov	x1, x0
	mov	x0, x2
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L41
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #24
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x23, x1
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, x25
	bl	tools_docgen_extractor_find_doc
	mov	x1, x23
	mov	x23, x0
	mov	x0, x22
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	tools_docgen_extractor_render_fields
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, #32
	bl	malloc
	mov	x1, x25
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x2, #0
	str	x2, [x21]
	mov	x2, #8
	add	x2, x21, x2
	str	x24, [x2]
	mov	x2, #16
	add	x2, x21, x2
	str	x23, [x2]
	mov	x23, x1
	mov	x1, #24
	add	x1, x21, x1
	str	x22, [x1]
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
	bl	tools_docgen_extractor_extract_ctors
	str	x0, [x19]
	b	.L43
.L41:
	mov	x0, x20
	bl	donna_list_reverse
.L43:
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
.type tools_docgen_extractor_extract_ctors, @function
.size tools_docgen_extractor_extract_ctors, .-tools_docgen_extractor_extract_ctors
/* end function tools_docgen_extractor_extract_ctors */

.text
.balign 16
tools_docgen_extractor_extract_regular_fns:
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
	str	x26, [x29, 16]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x21, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L54
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L48
	mov	x0, x20
	mov	x2, x21
	mov	x22, x0
	bl	tools_docgen_extractor_extract_regular_fns
	str	x0, [x19]
	b	.L56
.L48:
	mov	x22, x20
	mov	x2, #8
	add	x2, x0, x2
	ldr	x25, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #24
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #32
	add	x3, x0, x3
	ldr	x3, [x3]
	mov	x26, x3
	mov	x3, #48
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x24, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	.L51
	bl	tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, x23
	bl	tools_docgen_extractor_find_doc
	mov	x3, x26
	mov	x2, x24
	mov	x1, x23
	mov	x23, x0
	mov	x0, x22
	mov	x26, x1
	mov	x1, #1
	mov	x22, x0
	mov	x0, x25
	bl	tools_docgen_extractor_render_fn_sig
	mov	x24, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, #40
	bl	malloc
	mov	x1, x26
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x2, #0
	str	x2, [x22]
	mov	x2, #8
	add	x2, x22, x2
	str	x25, [x2]
	mov	x2, #16
	add	x3, x22, x2
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #24
	add	x2, x22, x2
	str	x24, [x2]
	mov	x24, x1
	mov	x1, #32
	add	x1, x22, x1
	str	x23, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x22, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x21, [x3]
	bl	tools_docgen_extractor_extract_regular_fns
	str	x0, [x20]
	b	.L53
.L51:
	mov	x0, x22
	mov	x1, x23
	mov	x2, x21
	bl	tools_docgen_extractor_extract_regular_fns
	str	x0, [x20]
.L53:
	str	x0, [x19]
	b	.L56
.L54:
	mov	x0, x21
	bl	donna_list_reverse
.L56:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldr	x26, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 80
	ret
.type tools_docgen_extractor_extract_regular_fns, @function
.size tools_docgen_extractor_extract_regular_fns, .-tools_docgen_extractor_extract_regular_fns
/* end function tools_docgen_extractor_extract_regular_fns */

.text
.balign 16
tools_docgen_extractor_extract_external_fns:
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
	str	x26, [x29, 16]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x21, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L66
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x22, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L64
	mov	x2, #8
	add	x2, x0, x2
	ldr	x25, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #24
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #32
	add	x3, x0, x3
	ldr	x3, [x3]
	mov	x26, x3
	mov	x3, #56
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x24, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	.L61
	bl	tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, x23
	bl	tools_docgen_extractor_find_doc
	mov	x3, x26
	mov	x2, x24
	mov	x1, x23
	mov	x23, x0
	mov	x0, x22
	mov	x26, x1
	mov	x1, #1
	mov	x22, x0
	mov	x0, x25
	bl	tools_docgen_extractor_render_fn_sig
	mov	x1, x0
	mov	x0, x22
	mov	x22, x0
	adrp	x0, str298
	add	x0, x0, #:lo12:str298
	bl	__rt_str_concat
	mov	x24, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, #40
	bl	malloc
	mov	x1, x26
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x2, #1
	str	x2, [x22]
	mov	x2, #8
	add	x2, x22, x2
	str	x25, [x2]
	mov	x2, #16
	add	x3, x22, x2
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #24
	add	x2, x22, x2
	str	x24, [x2]
	mov	x24, x1
	mov	x1, #32
	add	x1, x22, x1
	str	x23, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x22, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x21, [x3]
	bl	tools_docgen_extractor_extract_external_fns
	str	x0, [x20]
	b	.L63
.L61:
	mov	x0, x22
	mov	x1, x23
	mov	x2, x21
	bl	tools_docgen_extractor_extract_external_fns
	str	x0, [x20]
.L63:
	str	x0, [x19]
	b	.L68
.L64:
	mov	x0, x22
	mov	x20, x21
	mov	x2, x20
	bl	tools_docgen_extractor_extract_external_fns
	str	x0, [x19]
	b	.L68
.L66:
	mov	x0, x21
	bl	donna_list_reverse
.L68:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldr	x26, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 80
	ret
.type tools_docgen_extractor_extract_external_fns, @function
.size tools_docgen_extractor_extract_external_fns, .-tools_docgen_extractor_extract_external_fns
/* end function tools_docgen_extractor_extract_external_fns */

.text
.balign 16
tools_docgen_extractor_extract_consts:
	hint	#34
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [x29, 88]
	str	x20, [x29, 80]
	str	x21, [x29, 72]
	str	x22, [x29, 64]
	str	x23, [x29, 56]
	str	x24, [x29, 48]
	str	x25, [x29, 40]
	str	x26, [x29, 32]
	str	x27, [x29, 24]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x21, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L81
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x22, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	mov	x2, #8
	add	x2, x0, x2
	ldr	x25, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #24
	add	x2, x0, x2
	ldr	x27, [x2]
	mov	x2, #40
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	.L78
	bl	tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, x23
	bl	tools_docgen_extractor_find_doc
	mov	x1, x23
	mov	x23, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	mov	x26, x1
	ldr	x1, [x27]
	cmp	x1, #0
	beq	.L74
	mov	x24, x0
	mov	x0, #8
	add	x0, x27, x0
	ldr	x0, [x0]
	bl	tools_fmt_formatter_format_type_ann
	mov	x1, x26
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	str	x24, [x22]
	mov	x26, x1
	b	.L77
.L74:
	mov	x1, x26
	mov	x26, x1
	adrp	x1, str350
	add	x1, x1, #:lo12:str350
	str	x1, [x22]
	adrp	x24, str350
	add	x24, x24, #:lo12:str350
.L77:
	mov	x22, x0
	mov	x0, #40
	bl	malloc
	mov	x1, x26
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x2, #3
	str	x2, [x22]
	mov	x2, #8
	add	x2, x22, x2
	str	x25, [x2]
	mov	x2, #16
	add	x3, x22, x2
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #24
	add	x2, x22, x2
	str	x24, [x2]
	mov	x24, x1
	mov	x1, #32
	add	x1, x22, x1
	str	x23, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x22, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x21, [x3]
	bl	tools_docgen_extractor_extract_consts
	str	x0, [x20]
	b	.L80
.L78:
	mov	x0, x22
	mov	x1, x23
	mov	x2, x21
	bl	tools_docgen_extractor_extract_consts
	str	x0, [x20]
.L80:
	str	x0, [x19]
	b	.L83
.L81:
	mov	x0, x21
	bl	donna_list_reverse
.L83:
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	ldr	x27, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 96
	ret
.type tools_docgen_extractor_extract_consts, @function
.size tools_docgen_extractor_extract_consts, .-tools_docgen_extractor_extract_consts
/* end function tools_docgen_extractor_extract_consts */

.text
.balign 16
tools_docgen_extractor_render_fn_sig:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x3
	mov	x22, x0
	mov	x0, x2
	cmp	x1, #1
	beq	.L86
	adrp	x19, str373
	add	x19, x19, #:lo12:str373
	b	.L87
.L86:
	adrp	x19, str372
	add	x19, x19, #:lo12:str372
.L87:
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	tools_docgen_extractor_render_params
	adrp	x1, str376
	add	x1, x1, #:lo12:str376
	bl	donna_string_join
	mov	x3, x20
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	mov	x20, x1
	ldr	x1, [x3]
	cmp	x1, #0
	beq	.L89
	mov	x19, x0
	mov	x0, #8
	add	x0, x3, x0
	ldr	x0, [x0]
	bl	tools_fmt_formatter_format_type_ann
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str387
	add	x0, x0, #:lo12:str387
	bl	__rt_str_concat
	mov	x1, x22
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	str	x19, [x21]
	b	.L92
.L89:
	mov	x19, x21
	mov	x1, x22
	adrp	x2, str384
	add	x2, x2, #:lo12:str384
	str	x2, [x19]
	adrp	x19, str384
	add	x19, x19, #:lo12:str384
.L92:
	mov	x21, x1
	adrp	x1, str391
	add	x1, x1, #:lo12:str391
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str394
	add	x1, x1, #:lo12:str394
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str397
	add	x1, x1, #:lo12:str397
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type tools_docgen_extractor_render_fn_sig, @function
.size tools_docgen_extractor_render_fn_sig, .-tools_docgen_extractor_render_fn_sig
/* end function tools_docgen_extractor_render_fn_sig */

.text
.balign 16
tools_docgen_extractor_render_params:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L104
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x1]
	cmp	x2, #0
	cset	x3, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	w3, #0
	bne	.L98
	mov	x3, #0
	str	x3, [x2]
	mov	x20, x0
	mov	x0, #0
	b	.L99
.L98:
	mov	x4, #16
	add	x4, x1, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #0
	mov	x20, x0
	cset	x0, eq
	and	x0, x0, x3
	str	x0, [x2]
.L99:
	cmp	w0, #0
	bne	.L101
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	adrp	x1, str441
	add	x1, x1, #:lo12:str441
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	bl	tools_fmt_formatter_format_type_ann
	mov	x1, x0
	mov	x0, x22
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x20, [x21]
	b	.L103
.L101:
	mov	x0, x20
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	str	x20, [x21]
.L103:
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
	add	x2, x1, x2
	str	x19, [x2]
	bl	tools_docgen_extractor_render_params
	b	.L106
.L104:
	mov	x0, x19
	bl	donna_list_reverse
.L106:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type tools_docgen_extractor_render_params, @function
.size tools_docgen_extractor_render_params, .-tools_docgen_extractor_render_params
/* end function tools_docgen_extractor_render_params */

.text
.balign 16
tools_docgen_extractor_render_fields:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x21, x1
	mov	x20, x0
	mov	x0, x2
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	str	x20, [x2]
	mov	x3, #8
	add	x2, x2, x3
	str	x1, [x2]
	ldr	x2, [x20]
	cmp	x2, #0
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
	cmp	w2, #0
	bne	.L117
	ldr	x2, [x1]
	cmp	x2, #0
	mov	x19, x0
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	cmp	w0, #0
	bne	.L115
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x2, x20, x2
	ldr	x20, [x2]
	mov	x2, #8
	add	x2, x1, x2
	ldr	x21, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x22, x0
	bl	donna_string_is_empty
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #16
	sub	sp, sp, x3
	mov	x23, sp
	cmp	x2, #1
	beq	.L112
	mov	x22, x1
	adrp	x1, str499
	add	x1, x1, #:lo12:str499
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	tools_fmt_formatter_format_type_ann
	mov	x1, x0
	mov	x0, x21
	bl	__rt_str_concat
	mov	x21, x0
	str	x21, [x23]
	mov	x0, x20
	mov	x20, x21
	b	.L114
.L112:
	mov	x22, x1
	mov	x0, x21
	mov	x21, x23
	bl	tools_fmt_formatter_format_type_ann
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x20, [x21]
.L114:
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x20, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x19, [x3]
	bl	tools_docgen_extractor_render_fields
	b	.L118
.L115:
	mov	x0, x19
	bl	donna_list_reverse
	b	.L118
.L117:
	bl	donna_list_reverse
.L118:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type tools_docgen_extractor_render_fields, @function
.size tools_docgen_extractor_render_fields, .-tools_docgen_extractor_render_fields
/* end function tools_docgen_extractor_render_fields */

.text
.balign 16
tools_docgen_extractor_scan_doc_comments:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, str509
	add	x1, x1, #:lo12:str509
	bl	donna_string_split
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x1, #1
	bl	tools_docgen_extractor_collect_blocks
	ldp	x29, x30, [sp], 16
	ret
.type tools_docgen_extractor_scan_doc_comments, @function
.size tools_docgen_extractor_scan_doc_comments, .-tools_docgen_extractor_scan_doc_comments
/* end function tools_docgen_extractor_scan_doc_comments */

.text
.balign 16
tools_docgen_extractor_collect_blocks:
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
	mov	x21, x3
	mov	x23, x1
	mov	x1, x0
	mov	x0, x2
	ldr	x2, [x1]
	mov	x3, #1
	sub	x22, x23, x3
	cmp	x2, #0
	beq	.L130
	mov	x2, #8
	add	x2, x1, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x1, x1, x2
	mov	x24, x22
	ldr	x22, [x1]
	mov	x19, x0
	mov	x0, x20
	bl	tools_docgen_extractor_is_doc_line
	mov	x1, x23
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x3, #1
	add	x1, x1, x3
	cmp	x2, #1
	beq	.L128
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x23, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L125
	bl	donna_list_reverse
	mov	x1, x23
	mov	x25, x1
	adrp	x1, str562
	add	x1, x1, #:lo12:str562
	bl	donna_string_join
	mov	x23, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x25
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x24, [x22]
	mov	x24, x1
	mov	x1, #8
	add	x1, x22, x1
	str	x23, [x1]
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
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	tools_docgen_extractor_collect_blocks
	str	x0, [x20]
	b	.L127
.L125:
	mov	x1, x23
	mov	x0, x22
	mov	x3, x21
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x24, x1
	mov	x22, x0
	bl	tools_docgen_extractor_collect_blocks
	str	x0, [x20]
.L127:
	str	x0, [x19]
	b	.L135
.L128:
	mov	x24, x1
	mov	x17, x20
	mov	x20, x0
	mov	x0, x17
	mov	x17, x21
	mov	x21, x20
	mov	x20, x17
	bl	tools_docgen_extractor_strip_doc_prefix
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x22, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x21, [x3]
	mov	x3, x20
	bl	tools_docgen_extractor_collect_blocks
	str	x0, [x19]
	b	.L135
.L130:
	mov	x20, x21
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L133
	bl	donna_list_reverse
	adrp	x1, str526
	add	x1, x1, #:lo12:str526
	bl	donna_string_join
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x22, [x21]
	mov	x1, #8
	add	x1, x21, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	donna_list_reverse
	str	x0, [x19]
	b	.L135
.L133:
	mov	x0, x20
	bl	donna_list_reverse
	str	x0, [x19]
.L135:
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
.type tools_docgen_extractor_collect_blocks, @function
.size tools_docgen_extractor_collect_blocks, .-tools_docgen_extractor_collect_blocks
/* end function tools_docgen_extractor_collect_blocks */

.text
.balign 16
tools_docgen_extractor_is_doc_line:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	bl	donna_string_trim_start
	adrp	x1, str577
	add	x1, x1, #:lo12:str577
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L146
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #4
	cset	x1, ge
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	.L144
	mov	x1, #3
	bl	donna_string_char_str
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	adrp	x1, str594
	add	x1, x1, #:lo12:str594
	bl	strcmp
	cmp	x0, #0
	beq	.L141
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #1
	b	.L143
.L141:
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
.L143:
	str	x0, [x19]
	b	.L147
.L144:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L147
.L146:
	mov	x0, #0
.L147:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type tools_docgen_extractor_is_doc_line, @function
.size tools_docgen_extractor_is_doc_line, .-tools_docgen_extractor_is_doc_line
/* end function tools_docgen_extractor_is_doc_line */

.text
.balign 16
tools_docgen_extractor_strip_doc_prefix:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	donna_string_trim_start
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #3
	sub	x2, x1, x2
	mov	x1, #3
	bl	donna_string_slice
	adrp	x1, str606
	add	x1, x1, #:lo12:str606
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	.L150
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #1
	sub	x2, x1, x2
	mov	x1, #1
	bl	donna_string_slice
.L150:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type tools_docgen_extractor_strip_doc_prefix, @function
.size tools_docgen_extractor_strip_doc_prefix, .-tools_docgen_extractor_strip_doc_prefix
/* end function tools_docgen_extractor_strip_doc_prefix */

.text
.balign 16
tools_docgen_extractor_find_doc:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L156
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x2, [x2]
	ldr	x3, [x0]
	mov	x4, #8
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x4, #1
	sub	x4, x1, x4
	cmp	x3, x4
	cset	x3, eq
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	.L155
	mov	x0, x2
	bl	tools_docgen_extractor_find_doc
	str	x0, [x19]
	b	.L157
.L155:
	str	x0, [x19]
	b	.L157
.L156:
	adrp	x0, str623
	add	x0, x0, #:lo12:str623
.L157:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type tools_docgen_extractor_find_doc, @function
.size tools_docgen_extractor_find_doc, .-tools_docgen_extractor_find_doc
/* end function tools_docgen_extractor_find_doc */

.text
.balign 16
tools_docgen_extractor_span_line:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	utilities_location_span_start
	bl	utilities_location_pos_line
	ldp	x29, x30, [sp], 16
	ret
.type tools_docgen_extractor_span_line, @function
.size tools_docgen_extractor_span_line, .-tools_docgen_extractor_span_line
/* end function tools_docgen_extractor_span_line */

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
