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
str74:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str274:
	.ascii "@external "
	.byte 0
/* end data */

.data
.balign 8
str322:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str340:
	.ascii "pub "
	.byte 0
/* end data */

.data
.balign 8
str341:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str344:
	.ascii ", "
	.byte 0
/* end data */

.data
.balign 8
str352:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str355:
	.ascii " -> "
	.byte 0
/* end data */

.data
.balign 8
str359:
	.ascii "fn "
	.byte 0
/* end data */

.data
.balign 8
str362:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str365:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str409:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str467:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str477:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str494:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str530:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str545:
	.ascii "///"
	.byte 0
/* end data */

.data
.balign 8
str562:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str574:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str591:
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
	mov	x21, x0
	mov	x0, x19
	mov	x19, x1
	bl	compiler_lexer_lexer_lex
	mov	x2, x21
	mov	x1, x19
	ldr	x3, [x0]
	cmp	x3, #1
	beq	.L17
	mov	x19, x2
	mov	x2, #8
	add	x0, x0, x2
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
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x5, donna_nil
	add	x5, x5, #:lo12:donna_nil
	adrp	x4, donna_nil
	add	x4, x4, #:lo12:donna_nil
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	adrp	x1, str60
	add	x1, x1, #:lo12:str60
	bl	tools_docgen_extractor_DocModule
	ldp	x29, x30, [sp], 16
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
	mov	x19, x1
	mov	x1, x2
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #24
	add	x3, x2, x3
	ldr	x22, [x3]
	mov	x3, #32
	add	x3, x2, x3
	ldr	x20, [x3]
	mov	x3, #40
	add	x2, x2, x3
	ldr	x21, [x2]
	mov	x23, x1
	adrp	x1, str74
	add	x1, x1, #:lo12:str74
	bl	donna_string_join
	mov	x1, x23
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x23, x1
	bl	tools_docgen_extractor_extract_types
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x24, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x23, x1
	mov	x22, x0
	mov	x0, x21
	bl	tools_docgen_extractor_extract_regular_fns
	mov	x2, x24
	mov	x1, x23
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x24, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x23, x1
	bl	tools_docgen_extractor_extract_consts
	mov	x2, x24
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x21, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	tools_docgen_extractor_extract_external_fns
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x5, x0
	mov	x0, x19
	bl	tools_docgen_extractor_DocModule
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
	mov	x24, x1
	mov	x1, x0
	mov	x0, x2
	mov	x21, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L35
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	str	x19, [x29, 24]
	mov	x1, #8
	add	x1, x0, x1
	mov	x27, x19
	ldr	x19, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #24
	add	x2, x0, x2
	ldr	x26, [x2]
	mov	x2, #32
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #40
	add	x3, x0, x3
	ldr	x3, [x3]
	str	x3, [x29, 32]
	mov	x25, x2
	mov	x2, #48
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x23, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	cmp	x23, #0
	beq	.L32
	bl	tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x24
	bl	tools_docgen_extractor_find_doc
	mov	x2, x25
	mov	x1, x23
	mov	x4, x0
	mov	x0, x19
	ldr	x25, [x29, 24]
	mov	x19, x0
	ldr	x0, [x29, 32]
	str	x4, [x29, 16]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x23, sp
	cmp	x26, #1
	beq	.L28
	mov	x26, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x25, x1
	mov	x1, x24
	bl	tools_docgen_extractor_extract_ctors
	mov	x2, x26
	mov	x1, x25
	mov	x3, x0
	mov	x0, x19
	ldr	x19, [x29, 24]
	ldr	x4, [x29, 16]
	str	x3, [x23]
	b	.L31
.L28:
	mov	x0, x19
	mov	x19, x25
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	str	x3, [x23]
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
.L31:
	bl	tools_docgen_extractor_DocType
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
	bl	tools_docgen_extractor_extract_types
	str	x0, [x20]
	b	.L34
.L32:
	mov	x19, x27
	mov	x0, x22
	mov	x1, x24
	mov	x2, x21
	bl	tools_docgen_extractor_extract_types
	str	x0, [x20]
.L34:
	str	x0, [x19]
	b	.L37
.L35:
	mov	x0, x21
	bl	donna_list_reverse
.L37:
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
	mov	x23, x1
	mov	x1, x0
	mov	x0, x2
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L40
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
	ldr	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #24
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x25, x1
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x24
	mov	x24, x0
	mov	x0, x23
	bl	tools_docgen_extractor_find_doc
	mov	x1, x25
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	tools_docgen_extractor_render_fields
	mov	x1, x24
	mov	x2, x0
	mov	x0, x22
	bl	tools_docgen_extractor_DocCtor
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
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
	b	.L42
.L40:
	mov	x0, x20
	bl	donna_list_reverse
.L42:
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
	beq	.L53
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
	beq	.L47
	mov	x0, x20
	mov	x2, x21
	mov	x22, x0
	bl	tools_docgen_extractor_extract_regular_fns
	str	x0, [x19]
	b	.L55
.L47:
	mov	x22, x20
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x24, x1
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
	mov	x25, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	.L50
	bl	tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x23
	mov	x23, x0
	mov	x0, x24
	bl	tools_docgen_extractor_find_doc
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x25, x0
	mov	x0, x23
	mov	x24, x1
	mov	x1, #1
	mov	x23, x0
	bl	tools_docgen_extractor_render_fn_sig
	mov	x3, x25
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x24, x1
	mov	x1, #1
	bl	tools_docgen_extractor_DocFn
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
	bl	tools_docgen_extractor_extract_regular_fns
	str	x0, [x20]
	b	.L52
.L50:
	mov	x0, x22
	mov	x1, x24
	mov	x2, x21
	bl	tools_docgen_extractor_extract_regular_fns
	str	x0, [x20]
.L52:
	str	x0, [x19]
	b	.L55
.L53:
	mov	x0, x21
	bl	donna_list_reverse
.L55:
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
	beq	.L65
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
	beq	.L63
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x24, x1
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
	mov	x25, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	.L60
	bl	tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x23
	mov	x23, x0
	mov	x0, x24
	bl	tools_docgen_extractor_find_doc
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x25, x0
	mov	x0, x23
	mov	x24, x1
	mov	x1, #1
	mov	x23, x0
	bl	tools_docgen_extractor_render_fn_sig
	mov	x1, x0
	mov	x0, x23
	mov	x23, x0
	adrp	x0, str274
	add	x0, x0, #:lo12:str274
	bl	__rt_str_concat
	mov	x3, x25
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x24, x1
	mov	x1, #1
	bl	tools_docgen_extractor_DocExternalFn
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
	bl	tools_docgen_extractor_extract_external_fns
	str	x0, [x20]
	b	.L62
.L60:
	mov	x0, x22
	mov	x1, x24
	mov	x2, x21
	bl	tools_docgen_extractor_extract_external_fns
	str	x0, [x20]
.L62:
	str	x0, [x19]
	b	.L67
.L63:
	mov	x0, x22
	mov	x20, x21
	mov	x2, x20
	bl	tools_docgen_extractor_extract_external_fns
	str	x0, [x19]
	b	.L67
.L65:
	mov	x0, x21
	bl	donna_list_reverse
.L67:
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
	beq	.L79
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
	ldr	x23, [x2]
	mov	x24, x1
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
	beq	.L76
	bl	tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x23
	mov	x23, x0
	mov	x0, x24
	bl	tools_docgen_extractor_find_doc
	mov	x1, x24
	mov	x26, x0
	mov	x0, x23
	mov	x2, #16
	sub	sp, sp, x2
	mov	x23, sp
	mov	x25, x1
	ldr	x1, [x27]
	cmp	x1, #0
	beq	.L72
	mov	x24, x0
	mov	x0, #8
	add	x0, x27, x0
	ldr	x0, [x0]
	bl	tools_fmt_formatter_format_type_ann
	mov	x3, x26
	mov	x1, x25
	mov	x2, x0
	mov	x0, x24
	str	x2, [x23]
	b	.L75
.L72:
	mov	x3, x26
	mov	x1, x25
	adrp	x2, str322
	add	x2, x2, #:lo12:str322
	str	x2, [x23]
	adrp	x2, str322
	add	x2, x2, #:lo12:str322
.L75:
	mov	x24, x1
	mov	x1, #1
	bl	tools_docgen_extractor_DocConst
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
	bl	tools_docgen_extractor_extract_consts
	str	x0, [x20]
	b	.L78
.L76:
	mov	x0, x22
	mov	x1, x24
	mov	x2, x21
	bl	tools_docgen_extractor_extract_consts
	str	x0, [x20]
.L78:
	str	x0, [x19]
	b	.L81
.L79:
	mov	x0, x21
	bl	donna_list_reverse
.L81:
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
	beq	.L84
	adrp	x19, str341
	add	x19, x19, #:lo12:str341
	b	.L85
.L84:
	adrp	x19, str340
	add	x19, x19, #:lo12:str340
.L85:
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	tools_docgen_extractor_render_params
	adrp	x1, str344
	add	x1, x1, #:lo12:str344
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
	beq	.L87
	mov	x19, x0
	mov	x0, #8
	add	x0, x3, x0
	ldr	x0, [x0]
	bl	tools_fmt_formatter_format_type_ann
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str355
	add	x0, x0, #:lo12:str355
	bl	__rt_str_concat
	mov	x1, x22
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	str	x19, [x21]
	b	.L90
.L87:
	mov	x19, x21
	mov	x1, x22
	adrp	x2, str352
	add	x2, x2, #:lo12:str352
	str	x2, [x19]
	adrp	x19, str352
	add	x19, x19, #:lo12:str352
.L90:
	mov	x21, x1
	adrp	x1, str359
	add	x1, x1, #:lo12:str359
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str362
	add	x1, x1, #:lo12:str362
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str365
	add	x1, x1, #:lo12:str365
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
	beq	.L102
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
	bne	.L96
	mov	x3, #0
	str	x3, [x2]
	mov	x20, x0
	mov	x0, #0
	b	.L97
.L96:
	mov	x4, #16
	add	x4, x1, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #0
	mov	x20, x0
	cset	x0, eq
	and	x0, x0, x3
	str	x0, [x2]
.L97:
	cmp	w0, #0
	bne	.L99
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	adrp	x1, str409
	add	x1, x1, #:lo12:str409
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
	b	.L101
.L99:
	mov	x0, x20
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	str	x20, [x21]
.L101:
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
	b	.L104
.L102:
	mov	x0, x19
	bl	donna_list_reverse
.L104:
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
	bne	.L115
	ldr	x2, [x1]
	cmp	x2, #0
	mov	x19, x0
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	cmp	w0, #0
	bne	.L113
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
	beq	.L110
	mov	x22, x1
	adrp	x1, str467
	add	x1, x1, #:lo12:str467
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
	b	.L112
.L110:
	mov	x22, x1
	mov	x0, x21
	mov	x21, x23
	bl	tools_fmt_formatter_format_type_ann
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x20, [x21]
.L112:
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
	b	.L116
.L113:
	mov	x0, x19
	bl	donna_list_reverse
	b	.L116
.L115:
	bl	donna_list_reverse
.L116:
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
	adrp	x1, str477
	add	x1, x1, #:lo12:str477
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
	beq	.L128
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
	beq	.L126
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x23, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L123
	bl	donna_list_reverse
	mov	x1, x23
	mov	x25, x1
	adrp	x1, str530
	add	x1, x1, #:lo12:str530
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
	b	.L125
.L123:
	mov	x1, x23
	mov	x0, x22
	mov	x3, x21
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x24, x1
	mov	x22, x0
	bl	tools_docgen_extractor_collect_blocks
	str	x0, [x20]
.L125:
	str	x0, [x19]
	b	.L133
.L126:
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
	b	.L133
.L128:
	mov	x20, x21
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L131
	bl	donna_list_reverse
	adrp	x1, str494
	add	x1, x1, #:lo12:str494
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
	b	.L133
.L131:
	mov	x0, x20
	bl	donna_list_reverse
	str	x0, [x19]
.L133:
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
	adrp	x1, str545
	add	x1, x1, #:lo12:str545
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L144
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
	beq	.L142
	mov	x1, #3
	bl	donna_string_char_str
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	adrp	x1, str562
	add	x1, x1, #:lo12:str562
	bl	strcmp
	cmp	x0, #0
	beq	.L139
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #1
	b	.L141
.L139:
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
.L141:
	str	x0, [x19]
	b	.L145
.L142:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L145
.L144:
	mov	x0, #0
.L145:
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
	adrp	x1, str574
	add	x1, x1, #:lo12:str574
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	.L148
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #1
	sub	x2, x1, x2
	mov	x1, #1
	bl	donna_string_slice
.L148:
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
	beq	.L154
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
	beq	.L153
	mov	x0, x2
	bl	tools_docgen_extractor_find_doc
	str	x0, [x19]
	b	.L155
.L153:
	str	x0, [x19]
	b	.L155
.L154:
	adrp	x0, str591
	add	x0, x0, #:lo12:str591
.L155:
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
