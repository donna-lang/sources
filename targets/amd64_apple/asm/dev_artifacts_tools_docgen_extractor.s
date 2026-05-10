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
.balign 16
.globl _tools_docgen_extractor_DocCtor
_tools_docgen_extractor_DocCtor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq _malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocCtor */

.text
.balign 16
.globl _tools_docgen_extractor_DocFn
_tools_docgen_extractor_DocFn:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $40, %edi
	callq _malloc
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	movq %rcx, 32(%rax)
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocFn */

.text
.balign 16
.globl _tools_docgen_extractor_DocExternalFn
_tools_docgen_extractor_DocExternalFn:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $40, %edi
	callq _malloc
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	movq %rcx, 32(%rax)
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocExternalFn */

.text
.balign 16
.globl _tools_docgen_extractor_DocType
_tools_docgen_extractor_DocType:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r8, %r15
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $48, %edi
	callq _malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	movq %rcx, 32(%rax)
	movq %r8, 40(%rax)
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocType */

.text
.balign 16
.globl _tools_docgen_extractor_DocConst
_tools_docgen_extractor_DocConst:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $40, %edi
	callq _malloc
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $3, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	movq %rcx, 32(%rax)
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocConst */

.text
.balign 16
.globl _tools_docgen_extractor_DocModule
_tools_docgen_extractor_DocModule:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r9, %r15
	movq %r8, %r14
	movq %rcx, %r13
	movq %rdx, %r12
	movq %rsi, %rbx
	movq %rdi, -16(%rbp)
	movl $56, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq -16(%rbp), %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	movq %rcx, 32(%rax)
	movq %r8, 40(%rax)
	movq %r9, 48(%rax)
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_DocModule */

.text
.balign 16
.globl _tools_docgen_extractor_extract
_tools_docgen_extractor_extract:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %rbx
	movq %rsi, %r13
	movq %rdi, %r12
	callq _tools_docgen_extractor_scan_doc_comments
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rsi, %r13
	callq _compiler_lexer_lexer_lex
	movq %r13, %rsi
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb16
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq _compiler_parser_parser_parse
	movq %r12, %rdx
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb15
	movq %rdi, %r12
	movq 8(%rax), %rdi
	movq %r12, %rsi
	callq _tools_docgen_extractor_extract_from_ast
	movq %rax, (%rbx)
	jmp Lbb17
Lbb15:
	callq _tools_docgen_extractor_empty_doc_module
	movq %rax, (%rbx)
	jmp Lbb17
Lbb16:
	callq _tools_docgen_extractor_empty_doc_module
Lbb17:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_extract */

.text
.balign 16
_tools_docgen_extractor_empty_doc_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %r9
	leaq _donna_nil(%rip), %r8
	leaq _donna_nil(%rip), %rcx
	leaq _donna_nil(%rip), %rdx
	leaq _str60(%rip), %rsi
	callq _tools_docgen_extractor_DocModule
	leave
	ret
/* end function tools_docgen_extractor_empty_doc_module */

.text
.balign 16
_tools_docgen_extractor_extract_from_ast:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	movq %rdx, %rsi
	movq %rdi, %rax
	movq 8(%rax), %rdi
	movq 24(%rax), %r12
	movq 32(%rax), %r14
	movq 40(%rax), %r13
	movq %rsi, %r15
	leaq _str74(%rip), %rsi
	callq _donna_string_join
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, -8(%rbp)
	leaq _donna_nil(%rip), %rdx
	movq %rsi, %r14
	callq _tools_docgen_extractor_extract_types
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rdx, %r15
	leaq _donna_nil(%rip), %rdx
	movq %rsi, %r14
	movq %rdi, %r12
	movq %r13, %rdi
	callq _tools_docgen_extractor_extract_regular_fns
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, -16(%rbp)
	movq -8(%rbp), %r12
	movq %rdx, %r15
	leaq _donna_nil(%rip), %rdx
	movq %rsi, %r14
	callq _tools_docgen_extractor_extract_consts
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %r15
	movq -16(%rbp), %r14
	movq %rdx, %r13
	leaq _donna_nil(%rip), %rdx
	callq _tools_docgen_extractor_extract_external_fns
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r9
	callq _tools_docgen_extractor_DocModule
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_extract_from_ast */

.text
.balign 16
_tools_docgen_extractor_extract_types:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r13
	movq %rsi, %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb34
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -40(%rbp)
	movq 8(%rax), %r9
	movq %r9, -32(%rbp)
	movq 16(%rax), %r14
	movq 24(%rax), %r9
	movq %r9, -16(%rbp)
	movq 32(%rax), %rdx
	movq %rdx, -24(%rbp)
	movq 40(%rax), %r8
	movq %r8, -8(%rbp)
	movq %rdi, %rbx
	movq 48(%rax), %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -56(%rbp)
	cmpq $0, %r14
	jz Lbb31
	callq _tools_docgen_extractor_span_line
	movq %rax, %rsi
	movq %r15, %rdi
	callq _tools_docgen_extractor_find_doc
	movq %r14, %rsi
	movq %rax, %r8
	movq -40(%rbp), %rcx
	movq -8(%rbp), %rdi
	movq -24(%rbp), %rdx
	movq -16(%rbp), %r9
	movq %rdi, %rax
	movq -32(%rbp), %rdi
	movq %r8, -48(%rbp)
	subq $16, %rsp
	movq %rsp, %r14
	cmpq $1, %r9
	jz Lbb27
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rdx
	movq %rsi, %r12
	movq %r15, %rsi
	callq _tools_docgen_extractor_extract_ctors
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r14, %rax
	movq -56(%rbp), %r12
	movq -40(%rbp), %rbx
	movq -48(%rbp), %r8
	movq -24(%rbp), %rdx
	movq %rdi, %r14
	movq -32(%rbp), %rdi
	movq %rcx, (%rax)
	jmp Lbb30
Lbb27:
	xchgq %rcx, %rbx
	xchgq %r14, %rcx
	leaq _donna_nil(%rip), %rax
	movq %rax, (%rcx)
	leaq _donna_nil(%rip), %rax
	movq %rax, %rcx
Lbb30:
	callq _tools_docgen_extractor_DocType
	movq %r14, %rdi
	movq %rax, -64(%rbp)
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq -64(%rbp), %rax
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r13, 16(%rdx)
	callq _tools_docgen_extractor_extract_types
	movq %rax, (%r12)
	jmp Lbb33
Lbb31:
	movq %rbx, %rdi
	movq %rcx, %rbx
	movq %r15, %rsi
	movq %r13, %rdx
	callq _tools_docgen_extractor_extract_types
	movq %rax, (%r12)
Lbb33:
	movq %rax, (%rbx)
	jmp Lbb36
Lbb34:
	movq %r13, %rdi
	callq _donna_list_reverse
Lbb36:
	movq %rbp, %rsp
	subq $112, %rsp
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
_tools_docgen_extractor_extract_ctors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	movq %rsi, %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb39
	movq 8(%rdi), %rax
	movq 16(%rdi), %r13
	subq $16, %rsp
	movq %rsp, %rbx
	movq 8(%rax), %r14
	movq %r14, -24(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -16(%rbp)
	movq 24(%rax), %r14
	movq 32(%rax), %rdi
	callq _tools_docgen_extractor_span_line
	movq %rax, %rsi
	movq %r15, %rdi
	callq _tools_docgen_extractor_find_doc
	movq %r14, %rsi
	movq %rax, -32(%rbp)
	movq -16(%rbp), %rdi
	movq -24(%rbp), %r14
	leaq _donna_nil(%rip), %rdx
	callq _tools_docgen_extractor_render_fields
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq %rsi, %r15
	movq -32(%rbp), %rsi
	callq _tools_docgen_extractor_DocCtor
	movq %r13, %rdi
	movq %rax, %r13
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq _tools_docgen_extractor_extract_ctors
	movq %rax, (%rbx)
	jmp Lbb41
Lbb39:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb41:
	movq %rbp, %rsp
	subq $80, %rsp
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
_tools_docgen_extractor_extract_regular_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb51
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb45
	movq %r13, %rdx
	movq %rsi, %r15
	movq %rdi, %r14
	callq _tools_docgen_extractor_extract_regular_fns
	movq %rax, (%rbx)
	jmp Lbb53
Lbb45:
	movq %rdi, %r14
	movq %rsi, %r15
	movq 8(%rax), %rdi
	movq 16(%rax), %rcx
	movq 24(%rax), %rdx
	movq %rdx, -24(%rbp)
	movq 32(%rax), %rdx
	movq %rdx, -16(%rbp)
	movq %rdi, %r12
	movq 48(%rax), %rdi
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -40(%rbp)
	cmpq $0, %rcx
	jz Lbb48
	callq _tools_docgen_extractor_span_line
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	movq %r15, %rdi
	callq _tools_docgen_extractor_find_doc
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, -32(%rbp)
	movq -16(%rbp), %rcx
	movq -24(%rbp), %rdx
	movq %rsi, %r15
	movl $1, %esi
	movq %rdi, %r12
	callq _tools_docgen_extractor_render_fn_sig
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq -40(%rbp), %r12
	movq -32(%rbp), %rcx
	movq %rsi, %r15
	movl $1, %esi
	callq _tools_docgen_extractor_DocFn
	movq %r14, %rdi
	movq %rax, -48(%rbp)
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq -48(%rbp), %rax
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r13, 16(%rdx)
	callq _tools_docgen_extractor_extract_regular_fns
	movq %rax, (%r12)
	jmp Lbb50
Lbb48:
	movq %rax, %r12
	movq %r14, %rdi
	movq %r15, %rsi
	movq %r13, %rdx
	callq _tools_docgen_extractor_extract_regular_fns
	movq %rax, (%r12)
Lbb50:
	movq %rax, (%rbx)
	jmp Lbb53
Lbb51:
	movq %r13, %rdi
	callq _donna_list_reverse
Lbb53:
	movq %rbp, %rsp
	subq $96, %rsp
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
_tools_docgen_extractor_extract_external_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r13
	movq %rsi, %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb63
	movq 8(%rdi), %rax
	movq 16(%rdi), %r14
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb61
	movq 8(%rax), %rdi
	movq 16(%rax), %rcx
	movq 24(%rax), %rdx
	movq %rdx, -24(%rbp)
	movq 32(%rax), %rdx
	movq %rdx, -16(%rbp)
	movq %rdi, %r12
	movq 56(%rax), %rdi
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -40(%rbp)
	cmpq $0, %rcx
	jz Lbb58
	callq _tools_docgen_extractor_span_line
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	movq %r15, %rdi
	callq _tools_docgen_extractor_find_doc
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, -32(%rbp)
	movq -16(%rbp), %rcx
	movq -24(%rbp), %rdx
	movq %rsi, %r15
	movl $1, %esi
	movq %rdi, %r12
	callq _tools_docgen_extractor_render_fn_sig
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq _str274(%rip), %rdi
	callq ___rt_str_concat
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq -40(%rbp), %r12
	movq -32(%rbp), %rcx
	movq %rsi, %r15
	movl $1, %esi
	callq _tools_docgen_extractor_DocExternalFn
	movq %r14, %rdi
	movq %rax, -48(%rbp)
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq -48(%rbp), %rax
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r13, 16(%rdx)
	callq _tools_docgen_extractor_extract_external_fns
	movq %rax, (%r12)
	jmp Lbb60
Lbb58:
	movq %rax, %r12
	movq %r14, %rdi
	movq %r15, %rsi
	movq %r13, %rdx
	callq _tools_docgen_extractor_extract_external_fns
	movq %rax, (%r12)
Lbb60:
	movq %rax, (%rbx)
	jmp Lbb65
Lbb61:
	movq %r14, %rdi
	movq %r13, %r12
	movq %r15, %rsi
	movq %r12, %rdx
	callq _tools_docgen_extractor_extract_external_fns
	movq %rax, (%rbx)
	jmp Lbb65
Lbb63:
	movq %r13, %rdi
	callq _donna_list_reverse
Lbb65:
	movq %rbp, %rsp
	subq $96, %rsp
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
_tools_docgen_extractor_extract_consts:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r13
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb77
	movq 8(%rdi), %rdx
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -24(%rbp)
	movq 8(%rdx), %r8
	movq %r8, -16(%rbp)
	movq 16(%rdx), %rcx
	movq %rbx, %rax
	movq 24(%rdx), %rbx
	movq %rdi, %r15
	movq 40(%rdx), %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rcx
	jz Lbb74
	callq _tools_docgen_extractor_span_line
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq %r14, %rdi
	callq _tools_docgen_extractor_find_doc
	movq %r15, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq -16(%rbp), %r8
	movq %rcx, -8(%rbp)
	subq $16, %rsp
	movq %rsp, %r15
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb70
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq _tools_fmt_formatter_format_type_ann
	movq %r14, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	movq -24(%rbp), %rbx
	movq -8(%rbp), %rcx
	movq %rdi, %r14
	movq -16(%rbp), %rdi
	movq %rdx, (%r15)
	jmp Lbb73
Lbb70:
	movq %r14, %rsi
	movq %rdi, %r14
	movq %r8, %rdi
	leaq _str322(%rip), %rax
	movq %rax, (%r15)
	leaq _str322(%rip), %rax
	movq %rax, %rdx
Lbb73:
	movq %rsi, %r15
	movl $1, %esi
	callq _tools_docgen_extractor_DocConst
	movq %r14, %rdi
	movq %rax, -32(%rbp)
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq -32(%rbp), %rax
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r13, 16(%rdx)
	callq _tools_docgen_extractor_extract_consts
	movq %rax, (%r12)
	jmp Lbb76
Lbb74:
	movq %rax, %rbx
	movq %r15, %rdi
	movq %r14, %rsi
	movq %r13, %rdx
	callq _tools_docgen_extractor_extract_consts
	movq %rax, (%r12)
Lbb76:
	movq %rax, (%rbx)
	jmp Lbb79
Lbb77:
	movq %r13, %rdi
	callq _donna_list_reverse
Lbb79:
	movq %rbp, %rsp
	subq $80, %rsp
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
_tools_docgen_extractor_render_fn_sig:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdi, %r14
	movq %rdx, %rdi
	cmpq $1, %rsi
	movq %rcx, %r12
	leaq _str341(%rip), %rcx
	leaq _str340(%rip), %rax
	mov %rax, %rbx
	cmovnz %rcx, %rbx
	leaq _donna_nil(%rip), %rsi
	callq _tools_docgen_extractor_render_params
	movq %rax, %rdi
	leaq _str344(%rip), %rsi
	callq _donna_string_join
	movq %r12, %rcx
	movq %rbx, %rdi
	movq %rax, %r12
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb83
	movq %rdi, %rbx
	movq 8(%rcx), %rdi
	callq _tools_fmt_formatter_format_type_ann
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq _str355(%rip), %rdi
	callq ___rt_str_concat
	movq %r14, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rbx, (%r13)
	jmp Lbb86
Lbb83:
	movq %r13, %rbx
	movq %r14, %rsi
	leaq _str352(%rip), %rax
	movq %rax, (%rbx)
	leaq _str352(%rip), %rax
	movq %rax, %rbx
Lbb86:
	movq %rsi, %r13
	leaq _str359(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str362(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str365(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_render_fn_sig */

.text
.balign 16
_tools_docgen_extractor_render_params:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb98
	movq 8(%rdi), %rax
	movq 16(%rdi), %r12
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $0, %rcx
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb92
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb93
Lbb92:
	movq 16(%rax), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq %rsi, %rcx
	movq %rcx, (%rdx)
Lbb93:
	cmpl $0, %ecx
	jnz Lbb95
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	movq 8(%rax), %r14
	leaq _str409(%rip), %rsi
	callq ___rt_str_concat
	movq %r14, %rdi
	movq %rax, %r14
	callq _tools_fmt_formatter_format_type_ann
	movq %r14, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	movq %r12, (%r13)
	jmp Lbb97
Lbb95:
	movq %r12, %rdi
	movq 8(%rax), %r12
	movq %r12, (%r13)
Lbb97:
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq _tools_docgen_extractor_render_params
	jmp Lbb100
Lbb98:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb100:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_render_params */

.text
.balign 16
_tools_docgen_extractor_render_fields:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r13
	movq %rdi, %r12
	movq %rdx, %rdi
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %r13, %rsi
	movq %r12, (%rax)
	movq %rsi, 8(%rax)
	movq (%r12), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	testq $1, %rax
	jnz Lbb111
	movq (%rsi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	testq $1, %rax
	jnz Lbb109
	movq 8(%r12), %rdi
	movq 16(%r12), %r12
	movq 8(%rsi), %r13
	movq 16(%rsi), %r15
	movq %rdi, %r14
	callq _donna_string_is_empty
	movq %r15, %rsi
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r15
	cmpq $1, %rax
	jz Lbb106
	movq %rsi, %r14
	leaq _str467(%rip), %rsi
	callq ___rt_str_concat
	movq %r13, %rdi
	movq %rax, %r13
	callq _tools_fmt_formatter_format_type_ann
	movq %r13, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %r13
	movq %r13, (%r15)
	movq %r12, %rdi
	movq %r13, %r12
	jmp Lbb108
Lbb106:
	movq %rsi, %r14
	movq %r13, %rdi
	movq %r15, %r13
	callq _tools_fmt_formatter_format_type_ann
	movq %r12, %rdi
	movq %rax, %r12
	movq %r12, (%r13)
Lbb108:
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq _tools_docgen_extractor_render_fields
	jmp Lbb113
Lbb109:
	movq %rbx, %rdi
	callq _donna_list_reverse
	jmp Lbb113
Lbb111:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb113:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_render_fields */

.text
.balign 16
_tools_docgen_extractor_scan_doc_comments:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str477(%rip), %rsi
	callq _donna_string_split
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rcx
	leaq _donna_nil(%rip), %rdx
	movl $1, %esi
	callq _tools_docgen_extractor_collect_blocks
	leave
	ret
/* end function tools_docgen_extractor_scan_doc_comments */

.text
.balign 16
_tools_docgen_extractor_collect_blocks:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r13
	movq %rsi, %r15
	movq %rdi, %rax
	movq %rdx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	movq %r15, %r12
	subq $1, %r12
	movq %r12, -8(%rbp)
	cmpl $0, %ecx
	jnz Lbb125
	movq 8(%rax), %rbx
	movq 16(%rax), %r14
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _tools_docgen_extractor_is_doc_line
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	movq -8(%rbp), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	movq %rsi, %r15
	addq $1, %r15
	cmpl $0, %ecx
	jnz Lbb123
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -24(%rbp)
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb120
	callq _donna_list_reverse
	movq %r15, %rsi
	movq %rax, %rdi
	movq %rsi, %r15
	leaq _str530(%rip), %rsi
	callq _donna_string_join
	movq %r14, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %r14
	movl $16, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %r14
	movq -16(%rbp), %rax
	movq %r12, (%r14)
	movq %rax, 8(%r14)
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, %rcx
	movq -24(%rbp), %r12
	movq $1, (%rcx)
	movq %r14, 8(%rcx)
	movq %r13, 16(%rcx)
	leaq _donna_nil(%rip), %rdx
	callq _tools_docgen_extractor_collect_blocks
	movq %rax, (%r12)
	jmp Lbb122
Lbb120:
	movq %rax, %r12
	movq %r15, %rsi
	movq %r14, %rdi
	movq %r13, %rcx
	leaq _donna_nil(%rip), %rdx
	movq %rsi, %r15
	movq %rdi, %r14
	callq _tools_docgen_extractor_collect_blocks
	movq %rax, (%r12)
Lbb122:
	movq %rax, (%rbx)
	jmp Lbb130
Lbb123:
	movq %r13, %r12
	movq %rdi, %r13
	movq %rax, %rdi
	callq _tools_docgen_extractor_strip_doc_prefix
	movq %r14, %rdi
	movq %rax, -32(%rbp)
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq -32(%rbp), %rax
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r13, 16(%rdx)
	movq %r12, %rcx
	callq _tools_docgen_extractor_collect_blocks
	movq %rax, (%rbx)
	jmp Lbb130
Lbb125:
	movq %r12, %r14
	movq %r13, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb128
	callq _donna_list_reverse
	movq %rax, %rdi
	leaq _str494(%rip), %rsi
	callq _donna_string_join
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movl $16, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq %r14, (%r13)
	movq %r12, 8(%r13)
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r13, 8(%rdi)
	movq %r12, 16(%rdi)
	callq _donna_list_reverse
	movq %rax, (%rbx)
	jmp Lbb130
Lbb128:
	movq %r12, %rdi
	callq _donna_list_reverse
	movq %rax, (%rbx)
Lbb130:
	movq %rbp, %rsp
	subq $80, %rsp
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
_tools_docgen_extractor_is_doc_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	callq _donna_string_trim_start
	movq %rax, %rdi
	leaq _str545(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_starts_with
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb141
	movq %rdi, %rbx
	callq _donna_string_length
	movq %rbx, %rdi
	cmpq $4, %rax
	setge %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb139
	movl $3, %esi
	callq _donna_string_char_str
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	leaq _str562(%rip), %rsi
	callq _strcmp
	cmpq $0, %rax
	jz Lbb136
	movq $1, (%r12)
	movl $1, %eax
	jmp Lbb138
Lbb136:
	movq $0, (%r12)
	movl $0, %eax
Lbb138:
	movq %rax, (%rbx)
	jmp Lbb142
Lbb139:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb142
Lbb141:
	movl $0, %eax
Lbb142:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_is_doc_line */

.text
.balign 16
_tools_docgen_extractor_strip_doc_prefix:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _donna_string_trim_start
	movq %rax, %rdi
	movq %rdi, %rbx
	callq _donna_string_length
	movq %rbx, %rdi
	movq %rax, %rdx
	subq $3, %rdx
	movl $3, %esi
	callq _donna_string_slice
	movq %rax, %rbx
	leaq _str574(%rip), %rsi
	movq %rbx, %rdi
	callq _donna_string_starts_with
	cmpq $1, %rax
	jz Lbb145
	movq %rbx, %rax
	jmp Lbb146
Lbb145:
	movq %rbx, %rdi
	callq _donna_string_length
	movq %rax, %rcx
	movq %rbx, %rax
	movq %rcx, %rdx
	subq $1, %rdx
	movl $1, %esi
	movq %rax, %rdi
	callq _donna_string_slice
Lbb146:
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_strip_doc_prefix */

.text
.balign 16
_tools_docgen_extractor_find_doc:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb151
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rdx
	movq 8(%rax), %rax
	movq %rsi, %rcx
	subq $1, %rcx
	cmpq %rcx, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb150
	callq _tools_docgen_extractor_find_doc
	movq %rax, (%rbx)
	jmp Lbb152
Lbb150:
	movq %rax, (%rbx)
	jmp Lbb152
Lbb151:
	leaq _str591(%rip), %rax
Lbb152:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function tools_docgen_extractor_find_doc */

.text
.balign 16
_tools_docgen_extractor_span_line:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _utilities_location_span_start
	movq %rax, %rdi
	callq _utilities_location_pos_line
	leave
	ret
/* end function tools_docgen_extractor_span_line */

.text
.balign 16
___rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq _strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq _strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq _malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq _strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

