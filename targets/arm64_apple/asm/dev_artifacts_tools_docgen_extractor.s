.data
.balign 8
_str60:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str74:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str274:
	.ascii "@external "
	.byte 0
/* end data */

.data
.balign 8
_str322:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str340:
	.ascii "pub "
	.byte 0
/* end data */

.data
.balign 8
_str341:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str344:
	.ascii ", "
	.byte 0
/* end data */

.data
.balign 8
_str352:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str355:
	.ascii " -> "
	.byte 0
/* end data */

.data
.balign 8
_str359:
	.ascii "fn "
	.byte 0
/* end data */

.data
.balign 8
_str362:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str365:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str409:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str467:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str477:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str494:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str530:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str545:
	.ascii "///"
	.byte 0
/* end data */

.data
.balign 8
_str562:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str574:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str591:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
.globl _tools_docgen_extractor_DocCtor
_tools_docgen_extractor_DocCtor:
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
	bl	_malloc
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
/* end function tools_docgen_extractor_DocCtor */

.text
.balign 4
.globl _tools_docgen_extractor_DocFn
_tools_docgen_extractor_DocFn:
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
	bl	_malloc
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
/* end function tools_docgen_extractor_DocFn */

.text
.balign 4
.globl _tools_docgen_extractor_DocExternalFn
_tools_docgen_extractor_DocExternalFn:
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
	bl	_malloc
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
/* end function tools_docgen_extractor_DocExternalFn */

.text
.balign 4
.globl _tools_docgen_extractor_DocType
_tools_docgen_extractor_DocType:
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
	bl	_malloc
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
/* end function tools_docgen_extractor_DocType */

.text
.balign 4
.globl _tools_docgen_extractor_DocConst
_tools_docgen_extractor_DocConst:
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
	bl	_malloc
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
/* end function tools_docgen_extractor_DocConst */

.text
.balign 4
.globl _tools_docgen_extractor_DocModule
_tools_docgen_extractor_DocModule:
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
	bl	_malloc
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
/* end function tools_docgen_extractor_DocModule */

.text
.balign 4
.globl _tools_docgen_extractor_extract
_tools_docgen_extractor_extract:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	bl	_tools_docgen_extractor_scan_doc_comments
	mov	x1, x21
	mov	x21, x0
	mov	x0, x19
	mov	x19, x1
	bl	_compiler_lexer_lexer_lex
	mov	x2, x21
	mov	x1, x19
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L17
	mov	x19, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_parser_parser_parse
	mov	x2, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L15
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	_tools_docgen_extractor_extract_from_ast
	str	x0, [x19]
	b	L19
L15:
	mov	x0, x20
	bl	_tools_docgen_extractor_empty_doc_module
	str	x0, [x19]
	b	L19
L17:
	mov	x0, x20
	bl	_tools_docgen_extractor_empty_doc_module
L19:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function tools_docgen_extractor_extract */

.text
.balign 4
_tools_docgen_extractor_empty_doc_module:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x5, _donna_nil@page
	add	x5, x5, _donna_nil@pageoff
	adrp	x4, _donna_nil@page
	add	x4, x4, _donna_nil@pageoff
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	adrp	x1, _str60@page
	add	x1, x1, _str60@pageoff
	bl	_tools_docgen_extractor_DocModule
	ldp	x29, x30, [sp], 16
	ret
/* end function tools_docgen_extractor_empty_doc_module */

.text
.balign 4
_tools_docgen_extractor_extract_from_ast:
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
	adrp	x1, _str74@page
	add	x1, x1, _str74@pageoff
	bl	_donna_string_join
	mov	x1, x23
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x23, x1
	bl	_tools_docgen_extractor_extract_types
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x24, x2
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x23, x1
	mov	x22, x0
	mov	x0, x21
	bl	_tools_docgen_extractor_extract_regular_fns
	mov	x2, x24
	mov	x1, x23
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x24, x2
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x23, x1
	bl	_tools_docgen_extractor_extract_consts
	mov	x2, x24
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x21, x2
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_tools_docgen_extractor_extract_external_fns
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x5, x0
	mov	x0, x19
	bl	_tools_docgen_extractor_DocModule
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
/* end function tools_docgen_extractor_extract_from_ast */

.text
.balign 4
_tools_docgen_extractor_extract_types:
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
	beq	L36
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	str	x19, [x29, 32]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x5, [x1]
	str	x5, [x29, 16]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #24
	add	x2, x0, x2
	ldr	x27, [x2]
	mov	x2, #32
	add	x2, x0, x2
	ldr	x2, [x2]
	str	x2, [x29, 24]
	mov	x3, #40
	add	x3, x0, x3
	mov	x26, x19
	ldr	x19, [x3]
	mov	x25, x2
	mov	x2, #48
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x23, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	cmp	x23, #0
	beq	L33
	bl	_tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x24
	bl	_tools_docgen_extractor_find_doc
	mov	x2, x25
	mov	x1, x23
	mov	x26, x0
	mov	x0, x19
	ldr	x19, [x29, 32]
	mov	x25, x0
	ldr	x0, [x29, 16]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x23, sp
	cmp	x27, #1
	beq	L29
	mov	x0, x25
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x25, x1
	mov	x1, x24
	bl	_tools_docgen_extractor_extract_ctors
	mov	x4, x26
	mov	x1, x25
	mov	x3, x0
	mov	x0, x22
	ldr	x2, [x29, 24]
	mov	x22, x0
	ldr	x0, [x29, 16]
	str	x3, [x23]
	b	L32
L29:
	mov	x4, x26
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	str	x3, [x23]
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
L32:
	bl	_tools_docgen_extractor_DocType
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_tools_docgen_extractor_extract_types
	str	x0, [x20]
	b	L35
L33:
	mov	x19, x26
	mov	x0, x22
	mov	x1, x24
	mov	x2, x21
	bl	_tools_docgen_extractor_extract_types
	str	x0, [x20]
L35:
	str	x0, [x19]
	b	L38
L36:
	mov	x0, x21
	bl	_donna_list_reverse
L38:
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
/* end function tools_docgen_extractor_extract_types */

.text
.balign 4
_tools_docgen_extractor_extract_ctors:
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
	beq	L41
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
	bl	_tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x24
	mov	x24, x0
	mov	x0, x23
	bl	_tools_docgen_extractor_find_doc
	mov	x1, x25
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_tools_docgen_extractor_render_fields
	mov	x1, x24
	mov	x2, x0
	mov	x0, x22
	bl	_tools_docgen_extractor_DocCtor
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
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
	bl	_tools_docgen_extractor_extract_ctors
	str	x0, [x19]
	b	L43
L41:
	mov	x0, x20
	bl	_donna_list_reverse
L43:
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
/* end function tools_docgen_extractor_extract_ctors */

.text
.balign 4
_tools_docgen_extractor_extract_regular_fns:
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
	beq	L54
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
	beq	L48
	mov	x0, x20
	mov	x2, x21
	mov	x22, x0
	bl	_tools_docgen_extractor_extract_regular_fns
	str	x0, [x19]
	b	L56
L48:
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
	beq	L51
	bl	_tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x23
	mov	x23, x0
	mov	x0, x24
	bl	_tools_docgen_extractor_find_doc
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x25, x0
	mov	x0, x23
	mov	x24, x1
	mov	x1, #1
	mov	x23, x0
	bl	_tools_docgen_extractor_render_fn_sig
	mov	x3, x25
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x24, x1
	mov	x1, #1
	bl	_tools_docgen_extractor_DocFn
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_tools_docgen_extractor_extract_regular_fns
	str	x0, [x20]
	b	L53
L51:
	mov	x0, x22
	mov	x1, x24
	mov	x2, x21
	bl	_tools_docgen_extractor_extract_regular_fns
	str	x0, [x20]
L53:
	str	x0, [x19]
	b	L56
L54:
	mov	x0, x21
	bl	_donna_list_reverse
L56:
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
/* end function tools_docgen_extractor_extract_regular_fns */

.text
.balign 4
_tools_docgen_extractor_extract_external_fns:
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
	beq	L66
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
	beq	L64
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
	beq	L61
	bl	_tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x23
	mov	x23, x0
	mov	x0, x24
	bl	_tools_docgen_extractor_find_doc
	mov	x3, x26
	mov	x2, x25
	mov	x1, x24
	mov	x25, x0
	mov	x0, x23
	mov	x24, x1
	mov	x1, #1
	mov	x23, x0
	bl	_tools_docgen_extractor_render_fn_sig
	mov	x1, x0
	mov	x0, x23
	mov	x23, x0
	adrp	x0, _str274@page
	add	x0, x0, _str274@pageoff
	bl	___rt_str_concat
	mov	x3, x25
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x24, x1
	mov	x1, #1
	bl	_tools_docgen_extractor_DocExternalFn
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_tools_docgen_extractor_extract_external_fns
	str	x0, [x20]
	b	L63
L61:
	mov	x0, x22
	mov	x1, x24
	mov	x2, x21
	bl	_tools_docgen_extractor_extract_external_fns
	str	x0, [x20]
L63:
	str	x0, [x19]
	b	L68
L64:
	mov	x0, x22
	mov	x20, x21
	mov	x2, x20
	bl	_tools_docgen_extractor_extract_external_fns
	str	x0, [x19]
	b	L68
L66:
	mov	x0, x21
	bl	_donna_list_reverse
L68:
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
/* end function tools_docgen_extractor_extract_external_fns */

.text
.balign 4
_tools_docgen_extractor_extract_consts:
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
	beq	L80
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
	beq	L77
	bl	_tools_docgen_extractor_span_line
	mov	x1, x0
	mov	x0, x23
	mov	x23, x0
	mov	x0, x24
	bl	_tools_docgen_extractor_find_doc
	mov	x1, x24
	mov	x26, x0
	mov	x0, x23
	mov	x2, #16
	sub	sp, sp, x2
	mov	x23, sp
	mov	x25, x1
	ldr	x1, [x27]
	cmp	x1, #0
	beq	L73
	mov	x24, x0
	mov	x0, #8
	add	x0, x27, x0
	ldr	x0, [x0]
	bl	_tools_fmt_formatter_format_type_ann
	mov	x3, x26
	mov	x1, x25
	mov	x2, x0
	mov	x0, x24
	str	x2, [x23]
	b	L76
L73:
	mov	x3, x26
	mov	x1, x25
	adrp	x2, _str322@page
	add	x2, x2, _str322@pageoff
	str	x2, [x23]
	adrp	x2, _str322@page
	add	x2, x2, _str322@pageoff
L76:
	mov	x24, x1
	mov	x1, #1
	bl	_tools_docgen_extractor_DocConst
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_tools_docgen_extractor_extract_consts
	str	x0, [x20]
	b	L79
L77:
	mov	x0, x22
	mov	x1, x24
	mov	x2, x21
	bl	_tools_docgen_extractor_extract_consts
	str	x0, [x20]
L79:
	str	x0, [x19]
	b	L82
L80:
	mov	x0, x21
	bl	_donna_list_reverse
L82:
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
/* end function tools_docgen_extractor_extract_consts */

.text
.balign 4
_tools_docgen_extractor_render_fn_sig:
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
	beq	L85
	adrp	x19, _str341@page
	add	x19, x19, _str341@pageoff
	b	L86
L85:
	adrp	x19, _str340@page
	add	x19, x19, _str340@pageoff
L86:
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_tools_docgen_extractor_render_params
	adrp	x1, _str344@page
	add	x1, x1, _str344@pageoff
	bl	_donna_string_join
	mov	x3, x20
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	mov	x20, x1
	ldr	x1, [x3]
	cmp	x1, #0
	beq	L88
	mov	x19, x0
	mov	x0, #8
	add	x0, x3, x0
	ldr	x0, [x0]
	bl	_tools_fmt_formatter_format_type_ann
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, _str355@page
	add	x0, x0, _str355@pageoff
	bl	___rt_str_concat
	mov	x1, x22
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	str	x19, [x21]
	b	L91
L88:
	mov	x19, x21
	mov	x1, x22
	adrp	x2, _str352@page
	add	x2, x2, _str352@pageoff
	str	x2, [x19]
	adrp	x19, _str352@page
	add	x19, x19, _str352@pageoff
L91:
	mov	x21, x1
	adrp	x1, _str359@page
	add	x1, x1, _str359@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	bl	___rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str362@page
	add	x1, x1, _str362@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str365@page
	add	x1, x1, _str365@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function tools_docgen_extractor_render_fn_sig */

.text
.balign 4
_tools_docgen_extractor_render_params:
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
	beq	L103
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
	bne	L97
	mov	x3, #0
	str	x3, [x2]
	mov	x20, x0
	mov	x0, #0
	b	L98
L97:
	mov	x4, #16
	add	x4, x1, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #0
	mov	x20, x0
	cset	x0, eq
	and	x0, x0, x3
	str	x0, [x2]
L98:
	cmp	w0, #0
	bne	L100
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	adrp	x1, _str409@page
	add	x1, x1, _str409@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	bl	_tools_fmt_formatter_format_type_ann
	mov	x1, x0
	mov	x0, x22
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x20, [x21]
	b	L102
L100:
	mov	x0, x20
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	str	x20, [x21]
L102:
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
	add	x2, x1, x2
	str	x19, [x2]
	bl	_tools_docgen_extractor_render_params
	b	L105
L103:
	mov	x0, x19
	bl	_donna_list_reverse
L105:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function tools_docgen_extractor_render_params */

.text
.balign 4
_tools_docgen_extractor_render_fields:
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
	bl	_malloc
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
	bne	L116
	ldr	x2, [x1]
	cmp	x2, #0
	mov	x19, x0
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	cmp	w0, #0
	bne	L114
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
	bl	_donna_string_is_empty
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #16
	sub	sp, sp, x3
	mov	x23, sp
	cmp	x2, #1
	beq	L111
	mov	x22, x1
	adrp	x1, _str467@page
	add	x1, x1, _str467@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_tools_fmt_formatter_format_type_ann
	mov	x1, x0
	mov	x0, x21
	bl	___rt_str_concat
	mov	x21, x0
	str	x21, [x23]
	mov	x0, x20
	mov	x20, x21
	b	L113
L111:
	mov	x22, x1
	mov	x0, x21
	mov	x21, x23
	bl	_tools_fmt_formatter_format_type_ann
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x20, [x21]
L113:
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_tools_docgen_extractor_render_fields
	b	L117
L114:
	mov	x0, x19
	bl	_donna_list_reverse
	b	L117
L116:
	bl	_donna_list_reverse
L117:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function tools_docgen_extractor_render_fields */

.text
.balign 4
_tools_docgen_extractor_scan_doc_comments:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _str477@page
	add	x1, x1, _str477@pageoff
	bl	_donna_string_split
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x1, #1
	bl	_tools_docgen_extractor_collect_blocks
	ldp	x29, x30, [sp], 16
	ret
/* end function tools_docgen_extractor_scan_doc_comments */

.text
.balign 4
_tools_docgen_extractor_collect_blocks:
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
	beq	L129
	mov	x2, #8
	add	x2, x1, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x1, x1, x2
	mov	x24, x22
	ldr	x22, [x1]
	mov	x19, x0
	mov	x0, x20
	bl	_tools_docgen_extractor_is_doc_line
	mov	x1, x23
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x3, #1
	add	x1, x1, x3
	cmp	x2, #1
	beq	L127
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x23, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L124
	bl	_donna_list_reverse
	mov	x1, x23
	mov	x25, x1
	adrp	x1, _str530@page
	add	x1, x1, _str530@pageoff
	bl	_donna_string_join
	mov	x23, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
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
	bl	_malloc
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
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_tools_docgen_extractor_collect_blocks
	str	x0, [x20]
	b	L126
L124:
	mov	x1, x23
	mov	x0, x22
	mov	x3, x21
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x24, x1
	mov	x22, x0
	bl	_tools_docgen_extractor_collect_blocks
	str	x0, [x20]
L126:
	str	x0, [x19]
	b	L134
L127:
	mov	x24, x1
	mov	x17, x20
	mov	x20, x0
	mov	x0, x17
	mov	x17, x21
	mov	x21, x20
	mov	x20, x17
	bl	_tools_docgen_extractor_strip_doc_prefix
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_tools_docgen_extractor_collect_blocks
	str	x0, [x19]
	b	L134
L129:
	mov	x20, x21
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L132
	bl	_donna_list_reverse
	adrp	x1, _str494@page
	add	x1, x1, _str494@pageoff
	bl	_donna_string_join
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x22, [x21]
	mov	x1, #8
	add	x1, x21, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	_donna_list_reverse
	str	x0, [x19]
	b	L134
L132:
	mov	x0, x20
	bl	_donna_list_reverse
	str	x0, [x19]
L134:
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
/* end function tools_docgen_extractor_collect_blocks */

.text
.balign 4
_tools_docgen_extractor_is_doc_line:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	bl	_donna_string_trim_start
	adrp	x1, _str545@page
	add	x1, x1, _str545@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L145
	mov	x19, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #4
	cset	x1, ge
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	L143
	mov	x1, #3
	bl	_donna_string_char_str
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	adrp	x1, _str562@page
	add	x1, x1, _str562@pageoff
	bl	_strcmp
	cmp	x0, #0
	beq	L140
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #1
	b	L142
L140:
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
L142:
	str	x0, [x19]
	b	L146
L143:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L146
L145:
	mov	x0, #0
L146:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function tools_docgen_extractor_is_doc_line */

.text
.balign 4
_tools_docgen_extractor_strip_doc_prefix:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_donna_string_trim_start
	mov	x19, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #3
	sub	x2, x1, x2
	mov	x1, #3
	bl	_donna_string_slice
	adrp	x1, _str574@page
	add	x1, x1, _str574@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	L149
	mov	x19, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #1
	sub	x2, x1, x2
	mov	x1, #1
	bl	_donna_string_slice
L149:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function tools_docgen_extractor_strip_doc_prefix */

.text
.balign 4
_tools_docgen_extractor_find_doc:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L155
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
	beq	L154
	mov	x0, x2
	bl	_tools_docgen_extractor_find_doc
	str	x0, [x19]
	b	L156
L154:
	str	x0, [x19]
	b	L156
L155:
	adrp	x0, _str591@page
	add	x0, x0, _str591@pageoff
L156:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function tools_docgen_extractor_find_doc */

.text
.balign 4
_tools_docgen_extractor_span_line:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_utilities_location_span_start
	bl	_utilities_location_pos_line
	ldp	x29, x30, [sp], 16
	ret
/* end function tools_docgen_extractor_span_line */

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

