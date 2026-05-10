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
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $32, %ecx
	callq malloc
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocCtor */

.text
.balign 16
.globl tools_docgen_extractor_DocFn
tools_docgen_extractor_DocFn:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $40, %ecx
	callq malloc
	movq %r12, %r9
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	movq %r9, 32(%rax)
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocFn */

.text
.balign 16
.globl tools_docgen_extractor_DocExternalFn
tools_docgen_extractor_DocExternalFn:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $40, %ecx
	callq malloc
	movq %r12, %r9
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	movq %r9, 32(%rax)
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocExternalFn */

.text
.balign 16
.globl tools_docgen_extractor_DocType
tools_docgen_extractor_DocType:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq 48(%rbp), %rsi
	movq %r9, %rdi
	movq %r8, %rbx
	movq %rdx, %r12
	movq %rcx, %r13
	subq $32, %rsp
	movl $48, %ecx
	callq malloc
	subq $-32, %rsp
	movq $2, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rbx, 24(%rax)
	movq %rdi, 32(%rax)
	movq %rsi, 40(%rax)
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocType */

.text
.balign 16
.globl tools_docgen_extractor_DocConst
tools_docgen_extractor_DocConst:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $40, %ecx
	callq malloc
	movq %r12, %r9
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $3, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	movq %r9, 32(%rax)
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocConst */

.text
.balign 16
.globl tools_docgen_extractor_DocModule
tools_docgen_extractor_DocModule:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq 56(%rbp), %rsi
	movq 48(%rbp), %rdi
	movq %r9, %rbx
	movq %r8, %r12
	movq %rdx, %r13
	movq %rcx, %r14
	subq $32, %rsp
	movl $56, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %r12, 24(%rax)
	movq %rbx, 32(%rax)
	movq %rdi, 40(%rax)
	movq %rsi, 48(%rax)
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocModule */

.text
.balign 16
.globl tools_docgen_extractor_extract
tools_docgen_extractor_extract:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %rbx
	subq $32, %rsp
	movq %rcx, %rdi
	callq tools_docgen_extractor_scan_doc_comments
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	callq compiler_lexer_lexer_lex
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rsi
	cmpq $1, %rsi
	jz Lbb16
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parser_parse
	movq %rdi, %r8
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb15
	movq %rcx, %rdi
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rdi, %rdx
	callq tools_docgen_extractor_extract_from_ast
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb17
Lbb15:
	subq $32, %rsp
	callq tools_docgen_extractor_empty_doc_module
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb17
Lbb16:
	subq $32, %rsp
	callq tools_docgen_extractor_empty_doc_module
	subq $-32, %rsp
Lbb17:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_extract */

.text
.balign 16
tools_docgen_extractor_empty_doc_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	movq %rsp, %rdx
	leaq donna_nil(%rip), %rax
	movq %rax, 40(%rdx)
	leaq donna_nil(%rip), %rax
	movq %rax, 32(%rdx)
	leaq donna_nil(%rip), %r9
	leaq donna_nil(%rip), %r8
	leaq str60(%rip), %rdx
	callq tools_docgen_extractor_DocModule
	subq $-48, %rsp
	leave
	ret
/* end function tools_docgen_extractor_empty_doc_module */

.text
.balign 16
tools_docgen_extractor_extract_from_ast:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %r8, %rdx
	movq %rcx, %rax
	movq 8(%rax), %rcx
	movq 24(%rax), %r12
	movq 32(%rax), %rbx
	movq 40(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %r13
	leaq str74(%rip), %rdx
	callq donna_string_join
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rdx, %r13
	callq tools_docgen_extractor_extract_types
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r14
	leaq donna_nil(%rip), %r8
	movq %rdx, %r13
	movq %rcx, %r12
	movq %rsi, %rcx
	callq tools_docgen_extractor_extract_regular_fns
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r14
	leaq donna_nil(%rip), %r8
	movq %rdx, %r12
	callq tools_docgen_extractor_extract_consts
	movq %r14, %r8
	movq %r12, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r12
	leaq donna_nil(%rip), %r8
	callq tools_docgen_extractor_extract_external_fns
	movq %r13, %r9
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq %rdi, 40(%rax)
	movq %rsi, 32(%rax)
	callq tools_docgen_extractor_DocModule
	subq $-48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_extract_from_ast */

.text
.balign 16
tools_docgen_extractor_extract_types:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %rdx, %r14
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb32
	movq 8(%rax), %rcx
	movq 16(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rsi, -16(%rbp)
	movq %rsi, %rax
	movq 8(%rcx), %rsi
	movq 16(%rcx), %r13
	movq 24(%rcx), %r15
	movq 32(%rcx), %r8
	movq %r8, -32(%rbp)
	movq 40(%rcx), %rdi
	movq %rdi, -8(%rbp)
	movq 48(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %r13
	jz Lbb29
	subq $32, %rsp
	callq tools_docgen_extractor_span_line
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r14, %rcx
	callq tools_docgen_extractor_find_doc
	movq %r15, %r9
	movq %r13, %rdx
	movq %rsi, %rcx
	movq -16(%rbp), %r15
	movq %rcx, %rsi
	movq -8(%rbp), %rcx
	movq -32(%rbp), %r8
	movq %rax, -24(%rbp)
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %r9
	jz Lbb26
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rdx, %r15
	movq %r14, %rdx
	callq tools_docgen_extractor_extract_ctors
	movq %r15, %rdx
	movq %rsi, %rcx
	movq %rax, %r9
	movq -16(%rbp), %rsi
	movq -24(%rbp), %rax
	movq -32(%rbp), %r8
	subq $-32, %rsp
	movq %r9, (%r13)
	jmp Lbb28
Lbb26:
	movq %rsi, %rcx
	movq %r15, %rsi
	leaq donna_nil(%rip), %r9
	movq %r9, (%r13)
	leaq donna_nil(%rip), %r9
Lbb28:
	subq $48, %rsp
	movq %rsp, %r10
	movq %rax, 32(%r10)
	callq tools_docgen_extractor_DocType
	movq %r12, %rcx
	movq %rax, %r12
	subq $-48, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %r12, 8(%r8)
	movq %rbx, 16(%r8)
	subq $32, %rsp
	callq tools_docgen_extractor_extract_types
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb31
Lbb29:
	movq %rax, %rsi
	movq %r12, %rcx
	movq %r14, %rdx
	subq $32, %rsp
	movq %rbx, %r8
	callq tools_docgen_extractor_extract_types
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb31:
	movq %rax, (%rsi)
	jmp Lbb34
Lbb32:
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb34:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_extract_types */

.text
.balign 16
tools_docgen_extractor_extract_ctors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %r8, %rdi
	movq %rdx, %r13
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb37
	movq 8(%rcx), %rax
	movq 16(%rcx), %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rax), %r12
	movq 16(%rax), %rcx
	movq 24(%rax), %r15
	movq %rcx, %r14
	movq 32(%rax), %rcx
	subq $32, %rsp
	callq tools_docgen_extractor_span_line
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movq %r13, %rcx
	callq tools_docgen_extractor_find_doc
	movq %r15, %rdx
	movq %r14, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq tools_docgen_extractor_render_fields
	movq %r14, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq tools_docgen_extractor_DocCtor
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rbx, 8(%r8)
	movq %rdi, 16(%r8)
	subq $32, %rsp
	callq tools_docgen_extractor_extract_ctors
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb39
Lbb37:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb39:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_extract_ctors */

.text
.balign 16
tools_docgen_extractor_extract_regular_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb50
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb44
	movq %rdi, %rcx
	subq $32, %rsp
	movq %rbx, %r8
	movq %rdx, %r14
	movq %rcx, %r12
	callq tools_docgen_extractor_extract_regular_fns
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb52
Lbb44:
	movq %rdi, %r12
	movq %rdx, %r14
	movq 8(%rcx), %r13
	movq 16(%rcx), %rax
	movq 24(%rcx), %r15
	movq 32(%rcx), %r9
	movq %r9, -16(%rbp)
	movq 48(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rax
	jz Lbb47
	subq $32, %rsp
	callq tools_docgen_extractor_span_line
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %r14, %rcx
	callq tools_docgen_extractor_find_doc
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r9
	movq %r9, %r15
	movq -16(%rbp), %r9
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	movl $1, %edx
	movq %rcx, %r13
	callq tools_docgen_extractor_render_fn_sig
	movq %r15, %r9
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	movl $1, %edx
	callq tools_docgen_extractor_DocFn
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %r12, 8(%r8)
	movq %rbx, 16(%r8)
	subq $32, %rsp
	callq tools_docgen_extractor_extract_regular_fns
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb49
Lbb47:
	movq %r12, %rcx
	movq %r14, %rdx
	subq $32, %rsp
	movq %rbx, %r8
	callq tools_docgen_extractor_extract_regular_fns
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb49:
	movq %rax, (%rsi)
	jmp Lbb52
Lbb50:
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb52:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_extract_regular_fns */

.text
.balign 16
tools_docgen_extractor_extract_external_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %rdx, %r14
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb62
	movq 8(%rax), %rcx
	movq 16(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb60
	movq 8(%rcx), %r13
	movq 16(%rcx), %rax
	movq 24(%rcx), %r15
	movq 32(%rcx), %r9
	movq %r9, -16(%rbp)
	movq 56(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rax
	jz Lbb57
	subq $32, %rsp
	callq tools_docgen_extractor_span_line
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %r14, %rcx
	callq tools_docgen_extractor_find_doc
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r9
	movq %r9, %r15
	movq -16(%rbp), %r9
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	movl $1, %edx
	movq %rcx, %r13
	callq tools_docgen_extractor_render_fn_sig
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	leaq str274(%rip), %rcx
	callq __rt_str_concat
	movq %r15, %r9
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	movl $1, %edx
	callq tools_docgen_extractor_DocExternalFn
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %r12, 8(%r8)
	movq %rbx, 16(%r8)
	subq $32, %rsp
	callq tools_docgen_extractor_extract_external_fns
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb59
Lbb57:
	movq %r12, %rcx
	movq %r14, %rdx
	subq $32, %rsp
	movq %rbx, %r8
	callq tools_docgen_extractor_extract_external_fns
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb59:
	movq %rax, (%rsi)
	jmp Lbb64
Lbb60:
	movq %r12, %rcx
	movq %rbx, %rdi
	movq %r14, %rdx
	subq $32, %rsp
	movq %rdi, %r8
	callq tools_docgen_extractor_extract_external_fns
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb64
Lbb62:
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb64:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_extract_external_fns */

.text
.balign 16
tools_docgen_extractor_extract_consts:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %rdx, %r15
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb76
	movq 8(%rax), %rcx
	movq 16(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rsi, -16(%rbp)
	movq 8(%rcx), %r14
	movq 16(%rcx), %rax
	movq 24(%rcx), %r13
	movq 40(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rax
	jz Lbb73
	subq $32, %rsp
	callq tools_docgen_extractor_span_line
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movq %r15, %rcx
	callq tools_docgen_extractor_find_doc
	movq %r15, %rdx
	movq %r14, %rcx
	movq %rax, %r15
	movq %r13, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r13
	movq %rdx, %r14
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb69
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq tools_fmt_formatter_format_type_ann
	movq %r15, %r9
	movq %r14, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	movq -16(%rbp), %rsi
	subq $-32, %rsp
	movq %r8, (%r13)
	jmp Lbb72
Lbb69:
	movq %r15, %r9
	movq %r14, %rdx
	leaq str322(%rip), %rax
	movq %rax, (%r13)
	leaq str322(%rip), %rax
	movq %rax, %r8
Lbb72:
	subq $32, %rsp
	movq %rdx, %r14
	movl $1, %edx
	callq tools_docgen_extractor_DocConst
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %r12, 8(%r8)
	movq %rbx, 16(%r8)
	subq $32, %rsp
	callq tools_docgen_extractor_extract_consts
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb75
Lbb73:
	movq %r12, %rcx
	movq %r15, %rdx
	subq $32, %rsp
	movq %rbx, %r8
	callq tools_docgen_extractor_extract_consts
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb75:
	movq %rax, (%rsi)
	jmp Lbb78
Lbb76:
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb78:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_extract_consts */

.text
.balign 16
tools_docgen_extractor_render_fn_sig:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %rdi
	movq %rdx, %rax
	movq %rcx, %rdx
	movq %r8, %rcx
	cmpq $1, %rax
	movq %rdx, %r12
	leaq str341(%rip), %rdx
	leaq str340(%rip), %rax
	mov %rax, %rsi
	cmovnz %rdx, %rsi
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq tools_docgen_extractor_render_params
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str344(%rip), %rdx
	callq donna_string_join
	movq %rdi, %r9
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r9), %rax
	cmpq $0, %rax
	jz Lbb82
	movq %rcx, %rsi
	movq 8(%r9), %rcx
	subq $32, %rsp
	callq tools_fmt_formatter_format_type_ann
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str355(%rip), %rcx
	callq __rt_str_concat
	movq %r12, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rsi, (%rbx)
	jmp Lbb85
Lbb82:
	movq %rbx, %rsi
	movq %r12, %rdx
	leaq str352(%rip), %rax
	movq %rax, (%rsi)
	leaq str352(%rip), %rax
	movq %rax, %rsi
Lbb85:
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str359(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str362(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str365(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_render_fn_sig */

.text
.balign 16
tools_docgen_extractor_render_params:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb97
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $0, %rdx
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %r8d
	jnz Lbb91
	movq $0, (%rdx)
	movq %rcx, %rdi
	movl $0, %ecx
	jmp Lbb92
Lbb91:
	movq 16(%rax), %rdi
	movq (%rdi), %rdi
	cmpq $0, %rdi
	movq %rcx, %rdi
	setz %cl
	movzbq %cl, %rcx
	andq %r8, %rcx
	movq %rcx, (%rdx)
Lbb92:
	cmpl $0, %ecx
	jnz Lbb94
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq 8(%rax), %r12
	subq $32, %rsp
	leaq str409(%rip), %rdx
	callq __rt_str_concat
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq tools_fmt_formatter_format_type_ann
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %rdi, (%rbx)
	jmp Lbb96
Lbb94:
	movq %rdi, %rcx
	movq 8(%rax), %rdi
	movq %rdi, (%rbx)
Lbb96:
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rdi, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $32, %rsp
	callq tools_docgen_extractor_render_params
	subq $-32, %rsp
	jmp Lbb99
Lbb97:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb99:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_render_params */

.text
.balign 16
tools_docgen_extractor_render_fields:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rdx, %rbx
	movq %rcx, %rdi
	movq %r8, %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rbx, %rdx
	subq $-32, %rsp
	movq %rdi, (%rax)
	movq %rdx, 8(%rax)
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	testq $1, %rax
	jnz Lbb110
	movq (%rdx), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	testq $1, %rax
	jnz Lbb108
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	movq 8(%rdx), %rbx
	movq 16(%rdx), %r13
	subq $32, %rsp
	movq %rcx, %r12
	callq donna_string_is_empty
	movq %r13, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb105
	subq $32, %rsp
	movq %rdx, %r12
	leaq str467(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq tools_fmt_formatter_format_type_ann
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%r13)
	movq %rdi, %rcx
	movq %rbx, %rdi
	jmp Lbb107
Lbb105:
	movq %rdx, %r12
	movq %rbx, %rcx
	movq %r13, %rbx
	subq $32, %rsp
	callq tools_fmt_formatter_format_type_ann
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %rdi, (%rbx)
Lbb107:
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rdi, 8(%r8)
	movq %rsi, 16(%r8)
	subq $32, %rsp
	callq tools_docgen_extractor_render_fields
	subq $-32, %rsp
	jmp Lbb112
Lbb108:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
	jmp Lbb112
Lbb110:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb112:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_render_fields */

.text
.balign 16
tools_docgen_extractor_scan_doc_comments:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str477(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r9
	leaq donna_nil(%rip), %r8
	movl $1, %edx
	callq tools_docgen_extractor_collect_blocks
	subq $-32, %rsp
	leave
	ret
/* end function tools_docgen_extractor_scan_doc_comments */

.text
.balign 16
tools_docgen_extractor_collect_blocks:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %r9, %rbx
	movq %rcx, %rax
	movq %r8, %rcx
	movq (%rax), %rsi
	cmpq $0, %rsi
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	movq %r13, %r12
	subq $1, %r12
	cmpl $0, %edx
	jnz Lbb124
	movq 8(%rax), %rdi
	movq %r12, %r15
	movq 16(%rax), %r12
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq tools_docgen_extractor_is_doc_line
	movq %r13, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rdx, %r13
	addq $1, %r13
	cmpl $0, %eax
	jnz Lbb122
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb119
	subq $32, %rsp
	callq donna_list_reverse
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	leaq str530(%rip), %rdx
	callq donna_string_join
	movq %r12, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $16, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq %r15, (%r12)
	movq %r13, 8(%r12)
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	movq $1, (%r9)
	movq %r12, 8(%r9)
	movq %rbx, 16(%r9)
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq tools_docgen_extractor_collect_blocks
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb121
Lbb119:
	movq %r13, %rdx
	movq %r12, %rcx
	subq $32, %rsp
	movq %rbx, %r9
	leaq donna_nil(%rip), %r8
	movq %rdx, %r14
	movq %rcx, %r12
	callq tools_docgen_extractor_collect_blocks
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb121:
	movq %rax, (%rsi)
	jmp Lbb129
Lbb122:
	movq %r13, %r14
	xchgq %rdi, %rcx
	xchgq %rbx, %rdi
	subq $32, %rsp
	callq tools_docgen_extractor_strip_doc_prefix
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %r12, 8(%r8)
	movq %rbx, 16(%r8)
	subq $32, %rsp
	movq %rdi, %r9
	callq tools_docgen_extractor_collect_blocks
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb129
Lbb124:
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb127
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str494(%rip), %rdx
	callq donna_string_join
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $16, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r12, (%rbx)
	movq %rdi, 8(%rbx)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rbx, 8(%rcx)
	movq %rdi, 16(%rcx)
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb129
Lbb127:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb129:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_collect_blocks */

.text
.balign 16
tools_docgen_extractor_is_doc_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq donna_string_trim_start
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str545(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb140
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $4, %rax
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb138
	subq $32, %rsp
	movl $3, %edx
	callq donna_string_char_str
	movq %rax, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	subq $32, %rsp
	leaq str562(%rip), %rdx
	callq strcmp
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb135
	movq $1, (%rdi)
	movl $1, %eax
	jmp Lbb137
Lbb135:
	movq $0, (%rdi)
	movl $0, %eax
Lbb137:
	movq %rax, (%rsi)
	jmp Lbb141
Lbb138:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb141
Lbb140:
	movl $0, %eax
Lbb141:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function tools_docgen_extractor_is_doc_line */

.text
.balign 16
tools_docgen_extractor_strip_doc_prefix:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq donna_string_trim_start
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $3, %r8
	subq $32, %rsp
	movl $3, %edx
	callq donna_string_slice
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str574(%rip), %rdx
	movq %rsi, %rcx
	callq donna_string_starts_with
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb144
	movq %rsi, %rax
	jmp Lbb145
Lbb144:
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_string_length
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	movq %rcx, %r8
	subq $1, %r8
	subq $32, %rsp
	movl $1, %edx
	movq %rax, %rcx
	callq donna_string_slice
	subq $-32, %rsp
Lbb145:
	popq %rsi
	leave
	ret
/* end function tools_docgen_extractor_strip_doc_prefix */

.text
.balign 16
tools_docgen_extractor_find_doc:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb150
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rdi
	movq 8(%rax), %rax
	movq %rdx, %rsi
	subq $1, %rsi
	cmpq %rsi, %rdi
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb149
	subq $32, %rsp
	callq tools_docgen_extractor_find_doc
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb151
Lbb149:
	movq %rax, (%rsi)
	jmp Lbb151
Lbb150:
	leaq str591(%rip), %rax
Lbb151:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function tools_docgen_extractor_find_doc */

.text
.balign 16
tools_docgen_extractor_span_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq utilities_location_span_start
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_location_pos_line
	subq $-32, %rsp
	leave
	ret
/* end function tools_docgen_extractor_span_line */

.text
.balign 16
__rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq strlen
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rcx
	callq strlen
	subq $-32, %rsp
	addq %rbx, %rax
	movq %rax, %rcx
	addq $1, %rcx
	subq $32, %rsp
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcpy
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcat
	movq %rsi, %rax
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

