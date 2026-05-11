.data
.balign 8
str1:
	.ascii ".ssa"
	.byte 0
/* end data */

.data
.balign 8
str16:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str17:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str29:
	.ascii "lex error: "
	.byte 0
/* end data */

.data
.balign 8
str43:
	.ascii "parse error: "
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str58:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str174:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str215:
	.ascii "command -v qbe >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str218:
	.ascii "DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
str227:
	.ascii "command -v cc >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str235:
	.ascii "cc"
	.byte 0
/* end data */

.data
.balign 8
str236:
	.ascii "command -v zig >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str244:
	.ascii "zig cc"
	.byte 0
/* end data */

.data
.balign 8
str245:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str253:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str258:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
str266:
	.ascii "qbe -o "
	.byte 0
/* end data */

.data
.balign 8
str269:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str273:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str282:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str328:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str335:
	.ascii "-O2"
	.byte 0
/* end data */

.data
.balign 8
str339:
	.ascii "-c"
	.byte 0
/* end data */

.data
.balign 8
str344:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str359:
	.ascii "ffi"
	.byte 0
/* end data */

.data
.balign 8
str381:
	.ascii ".c"
	.byte 0
/* end data */

.data
.balign 8
str391:
	.ascii ".o"
	.byte 0
/* end data */

.data
.balign 8
str399:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str400:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str408:
	.ascii "test "
	.byte 0
/* end data */

.data
.balign 8
str411:
	.ascii " -nt "
	.byte 0
/* end data */

.data
.balign 8
str418:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str419:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str420:
	.ascii "'"
	.byte 92
	.ascii "''"
	.byte 0
/* end data */

.data
.balign 8
str423:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str431:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str458:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str491:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str518:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str532:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str556:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str607:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str631:
	.ascii "import "
	.byte 0
/* end data */

.data
.balign 8
str650:
	.ascii " as "
	.byte 0
/* end data */

.data
.balign 8
str704:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str719:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str721:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str921:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str934:
	.ascii "import "
	.byte 0
/* end data */

.text
.balign 16
.globl builder_pipeline_compile_module
builder_pipeline_compile_module:
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
	movq 48(%rbp), %rsi
	movq %r9, %r14
	movq %rdx, %rbx
	movq %rcx, %rdi
	movq %r8, %rcx
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq builder_pipeline_mod_name_to_stem
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str1(%rip), %rdx
	callq __rt_str_concat
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	movq %rbx, %rdx
	movq %rax, %r13
	subq $-32, %rsp
	cmpq $1, %rsi
	jz Lbb2
	subq $32, %rsp
	movq %rdx, %r12
	movq %r13, %rdx
	movq %rdi, %rcx
	callq builder_pipeline_file_is_current
	movq %rax, %r15
	subq $-32, %rsp
	jmp Lbb4
Lbb2:
	movq %rdx, %r12
	movl $0, %r15d
Lbb4:
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %r15
	jz Lbb6
	subq $32, %rsp
	movq %r12, %rcx
	callq utilities_logger_step
	subq $-32, %rsp
	leaq str17(%rip), %rax
	movq %rax, (%rsi)
	jmp Lbb7
Lbb6:
	leaq str16(%rip), %rax
	movq %rax, (%rsi)
Lbb7:
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_files_read
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rdi, %rdx
	movq %rbx, %rcx
	callq compiler_lexer_lexer_lex
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb19
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parser_parse
	movq %r14, %r8
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb17
	movq %r12, %rdx
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_check_module_with_imports
	movq %rbx, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb15
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r12
	callq compiler_typesystem_checker_extract_interface
	movq %r12, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %r15
	jz Lbb13
	subq $32, %rsp
	callq compiler_codegen_codegen_generate
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r13, %rcx
	callq donna_files_write
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r14, (%rcx)
	movq %r13, 8(%rcx)
	movq $1, 16(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%r12)
	jmp Lbb14
Lbb13:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r14, (%rcx)
	movq %r13, 8(%rcx)
	movq $0, 16(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%r12)
Lbb14:
	movq %rax, (%rbx)
	jmp Lbb16
Lbb15:
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq builder_pipeline_render_errors
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str58(%rip), %rdx
	callq donna_string_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb16:
	movq %rax, (%rdi)
	jmp Lbb18
Lbb17:
	subq $32, %rsp
	leaq str43(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb18:
	movq %rax, (%rsi)
	jmp Lbb21
Lbb19:
	movq %rdi, %rdx
	subq $32, %rsp
	leaq str29(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb21:
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
/* end function builder_pipeline_compile_module */

.text
.balign 16
.globl builder_pipeline_compile_file_list
builder_pipeline_compile_file_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r9, %rbx
	movq %r8, %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq builder_pipeline_sort_by_import_count
	movq %rbx, %r9
	movq %rdi, %r8
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $64, %rsp
	movq %rsp, %rsi
	movq $0, 48(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 40(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 32(%rsi)
	callq builder_pipeline_compile_loop
	subq $-64, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_pipeline_compile_file_list */

.text
.balign 16
.globl builder_pipeline_compile_dir
builder_pipeline_compile_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq 48(%rbp), %rdi
	movq %r9, %rbx
	movq %r8, %rsi
	movq %rdx, %r13
	movq %rcx, %r12
	subq $32, %rsp
	movq %r12, %rcx
	callq donna_files_list_dir
	movq %r13, %r8
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r9
	callq builder_pipeline_collect_pairs_recursive
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_topo_sort_pairs
	movq %rbx, %r8
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rsi
	movq %rdi, 40(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 32(%rsi)
	leaq donna_nil(%rip), %r9
	callq builder_pipeline_compile_pairs_loop
	subq $-48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_compile_dir */

.text
.balign 16
builder_pipeline_compile_pairs_loop:
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
	movq 56(%rbp), %rsi
	movq 48(%rbp), %rdi
	movq %r9, %rbx
	movq %r8, %r14
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb37
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, -24(%rbp)
	movq (%rax), %rcx
	movq 8(%rax), %r15
	subq $32, %rsp
	movq %rdx, %r13
	movq %rbx, %rdx
	movq %rcx, %r12
	movq %r14, %rcx
	callq donna_list_append
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq %rsi, 32(%rax)
	movq %r8, %r13
	movq %rdx, %r8
	movq %rdx, %r12
	movq %r15, %rdx
	callq builder_pipeline_compile_module
	movq %r13, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %r9
	cmpq $1, %r9
	setz %r9b
	movzbq %r9b, %r9
	cmpl $0, %r9d
	jnz Lbb35
	movq 8(%rax), %rax
	movq %r8, %r14
	movq (%rax), %r8
	movq %r8, -16(%rbp)
	movq 8(%rax), %r10
	movq %r10, -32(%rbp)
	movq %rdx, %r13
	movq 16(%rax), %rdx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb31
	movq %rsi, (%rax)
	xchgq %rbx, %rsi
	jmp Lbb34
Lbb31:
	movq %rbx, %rsi
	movq $1, (%rax)
	movl $1, %ebx
Lbb34:
	subq $32, %rsp
	movq %rcx, %r12
	movl $16, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	movq -16(%rbp), %rax
	subq $-32, %rsp
	movq %r15, (%r12)
	movq %rax, 8(%r12)
	subq $32, %rsp
	movq %rcx, %r15
	movl $24, %ecx
	callq malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq %r12, %rax
	movq %rcx, %r12
	movq -24(%rbp), %rcx
	subq $-32, %rsp
	movq $1, (%r15)
	movq %rax, 8(%r15)
	movq %r12, 16(%r15)
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rcx
	movq -32(%rbp), %r10
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r10, 8(%rax)
	movq %rdi, 16(%rax)
	subq $48, %rsp
	movq %rsp, %rdi
	movq %rbx, 40(%rdi)
	movq %rax, 32(%rdi)
	callq builder_pipeline_compile_pairs_loop
	subq $-48, %rsp
	movq %rax, (%rsi)
	jmp Lbb39
Lbb35:
	movq %rbx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb39
Lbb37:
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rbx, (%rcx)
	movq %rdi, 8(%rcx)
	movq %rsi, 16(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
Lbb39:
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
/* end function builder_pipeline_compile_pairs_loop */

.text
.balign 16
builder_pipeline_compile_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq 64(%rbp), %rsi
	movq 56(%rbp), %rdi
	movq 48(%rbp), %r12
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	movq %rcx, %rax
	movq %rdi, %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb55
	movq 8(%rax), %rcx
	movq %rcx, -16(%rbp)
	movq 16(%rax), %rax
	movq %rax, -48(%rbp)
	subq $32, %rsp
	callq donna_files_basename
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_drop_extension
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r13, %rcx
	callq donna_string_is_empty
	movq %r13, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -8(%rbp)
	cmpq $1, %rax
	jz Lbb43
	subq $32, %rsp
	movq %rdx, %r13
	leaq str174(%rip), %rdx
	movq %rcx, %rbx
	movq %r13, %rcx
	callq __rt_str_concat
	movq %r13, %rdx
	movq %rax, %rcx
	movq %rdi, %rax
	movq -8(%rbp), %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %rax, %rdx
	callq __rt_str_concat
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%rdi)
	jmp Lbb45
Lbb43:
	xchgq %rbx, %rdi
	movq %rbx, (%rdi)
Lbb45:
	subq $32, %rsp
	movq %rdx, %r13
	movq %r12, %rdx
	movq %rcx, %rdi
	movq %r15, %rcx
	callq donna_list_append
	movq %r14, %r8
	movq %r13, %rdx
	movq %rdi, %rcx
	movq %rax, %r9
	movq %rcx, %rdi
	movq -16(%rbp), %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq %rsi, 32(%rax)
	movq %r8, %r14
	movq %rdx, %r13
	movq %rbx, %rdx
	callq builder_pipeline_compile_module
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rdx
	movq %rdi, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r10
	cmpq $1, %r10
	setz %r10b
	movzbq %r10b, %r10
	cmpl $0, %r10d
	jnz Lbb53
	movq 8(%rax), %rax
	movq %r9, %r15
	movq (%rax), %r9
	movq %r9, -24(%rbp)
	movq %r8, %r14
	movq 8(%rax), %r8
	movq %r8, -40(%rbp)
	movq %rdx, %r13
	movq 16(%rax), %rdx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb49
	movq %rsi, (%rax)
	movq %rsi, -32(%rbp)
	movq %rdi, %rsi
	jmp Lbb52
Lbb49:
	movq %rdi, %rsi
	movq $1, (%rax)
	movq $1, -32(%rbp)
Lbb52:
	subq $32, %rsp
	movq %rcx, %rdi
	movl $16, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	movq -24(%rbp), %rax
	subq $-32, %rsp
	movq %rbx, (%rdi)
	movq %rax, 8(%rdi)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	xchgq %rax, %rdi
	movq -32(%rbp), %rbx
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r10
	movq -40(%rbp), %rax
	movq %rcx, %r12
	movq -48(%rbp), %rcx
	subq $-32, %rsp
	movq $1, (%r10)
	movq %rax, 8(%r10)
	movq %r12, 16(%r10)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rbx, 48(%rax)
	movq %r10, 40(%rax)
	movq %rdi, 32(%rax)
	callq builder_pipeline_compile_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb57
Lbb53:
	movq %rdi, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb57
Lbb55:
	movq %r12, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rbx, (%rcx)
	movq %rdi, 8(%rcx)
	movq %rsi, 16(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
Lbb57:
	movq %rbp, %rsp
	subq $112, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_compile_loop */

.text
.balign 16
.globl builder_pipeline_qbe_available
builder_pipeline_qbe_available:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str215(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function builder_pipeline_qbe_available */

.text
.balign 16
.globl builder_pipeline_c_compiler_command
builder_pipeline_c_compiler_command:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq str218(%rip), %rcx
	callq donna_shell_getenv
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_string_is_empty
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	cmpq $0, %rcx
	jz Lbb67
	subq $32, %rsp
	leaq str227(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb66
	subq $32, %rsp
	leaq str236(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb64
	leaq str245(%rip), %rax
	movq %rax, (%rcx)
	leaq str245(%rip), %rax
	jmp Lbb65
Lbb64:
	leaq str244(%rip), %rax
	movq %rax, (%rcx)
	leaq str244(%rip), %rax
Lbb65:
	movq %rax, (%rsi)
	jmp Lbb67
Lbb66:
	leaq str235(%rip), %rax
	movq %rax, (%rsi)
	leaq str235(%rip), %rax
Lbb67:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function builder_pipeline_c_compiler_command */

.text
.balign 16
.globl builder_pipeline_c_compiler_available
builder_pipeline_c_compiler_available:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_pipeline_c_compiler_command
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_string_is_empty
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function builder_pipeline_c_compiler_available */

.text
.balign 16
.globl builder_pipeline_c_command
builder_pipeline_c_command:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	callq builder_pipeline_c_compiler_command
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str253(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_join_shell_args
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function builder_pipeline_c_command */

.text
.balign 16
.globl builder_pipeline_run_qbe
builder_pipeline_run_qbe:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_files_drop_extension
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str258(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rdx
	movq %rcx, %rdi
	callq builder_pipeline_file_is_current
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb76
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq builder_pipeline_sh_quote
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str266(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str269(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_sh_quote
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str273(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	cmpq $0, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb75
	leaq str282(%rip), %rax
	movq %rax, (%rcx)
	leaq str282(%rip), %rax
	jmp Lbb77
Lbb75:
	movq %rax, (%rcx)
	jmp Lbb77
Lbb76:
	movq %rsi, %rax
Lbb77:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_pipeline_run_qbe */

.text
.balign 16
.globl builder_pipeline_run_qbe_all
builder_pipeline_run_qbe_all:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb82
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq builder_pipeline_run_qbe
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq donna_string_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb81
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rbx, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $32, %rsp
	callq builder_pipeline_run_qbe_all
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb84
Lbb81:
	subq $32, %rsp
	movq %rdi, %rdx
	callq builder_pipeline_run_qbe_all
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb84
Lbb82:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb84:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_run_qbe_all */

.text
.balign 16
.globl builder_pipeline_compile_c
builder_pipeline_compile_c:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_files_exists
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb92
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq builder_pipeline_file_is_current
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb91
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %rdi, 8(%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r12)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	leaq str328(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %rcx, 8(%r12)
	movq %rbx, 16(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	leaq str335(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	leaq str339(%rip), %rax
	movq %rax, 8(%rcx)
	movq %rbx, 16(%rcx)
	subq $32, %rsp
	callq builder_pipeline_c_command
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str344(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb89
	leaq donna_nil(%rip), %rax
	movq %rax, (%rdi)
	leaq donna_nil(%rip), %rax
	jmp Lbb90
Lbb89:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rbx, %rdx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	movq %rax, (%rdi)
Lbb90:
	movq %rax, (%rsi)
	jmp Lbb93
Lbb91:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rdi, %rdx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb93
Lbb92:
	leaq donna_nil(%rip), %rax
Lbb93:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_compile_c */

.text
.balign 16
.globl builder_pipeline_compile_ffi
builder_pipeline_compile_ffi:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	subq $32, %rsp
	leaq str359(%rip), %rdx
	callq donna_files_join
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_files_is_dir
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb96
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_files_list_dir
	movq %rdi, %r8
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r9
	callq builder_pipeline_compile_c_files
	subq $-32, %rsp
	jmp Lbb97
Lbb96:
	leaq donna_nil(%rip), %rax
Lbb97:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_pipeline_compile_ffi */

.text
.balign 16
builder_pipeline_compile_c_files:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r8, %r12
	movq %rcx, %rax
	movq %r9, %rcx
	movq %rcx, %r13
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb103
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str381(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_ends_with
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb101
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rcx, %rdx
	movq %rcx, %r14
	movq %rbx, %rcx
	callq donna_files_join
	movq %r14, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_drop_extension
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str391(%rip), %rdx
	callq __rt_str_concat
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movq %r12, %rcx
	callq donna_files_join
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_compile_c
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	movq %r13, %rdx
	callq donna_list_append
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_compile_c_files
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb105
Lbb101:
	movq %rdi, %rcx
	movq %r13, %rdi
	movq %r12, %r8
	subq $32, %rsp
	movq %rdi, %r9
	callq builder_pipeline_compile_c_files
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb105
Lbb103:
	movq %r13, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb105:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_compile_c_files */

.text
.balign 16
.globl builder_pipeline_mod_name_to_stem
builder_pipeline_mod_name_to_stem:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str400(%rip), %r8
	leaq str399(%rip), %rdx
	callq donna_string_replace
	subq $-32, %rsp
	leave
	ret
/* end function builder_pipeline_mod_name_to_stem */

.text
.balign 16
builder_pipeline_file_is_current:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq donna_files_exists
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb110
	subq $32, %rsp
	callq builder_pipeline_sh_quote
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str408(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str411(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_sh_quote
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setnz %al
	movzbq %al, %rax
	jmp Lbb111
Lbb110:
	movl $0, %eax
Lbb111:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_pipeline_file_is_current */

.text
.balign 16
builder_pipeline_sh_quote:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str420(%rip), %r8
	leaq str419(%rip), %rdx
	callq donna_string_replace
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str418(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str423(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	leave
	ret
/* end function builder_pipeline_sh_quote */

.text
.balign 16
builder_pipeline_join_shell_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb122
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb118
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb119
Lbb118:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb119:
	cmpl $0, %eax
	jnz Lbb121
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq builder_pipeline_sh_quote
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str458(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_join_shell_args
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb123
Lbb121:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq builder_pipeline_sh_quote
	subq $-32, %rsp
	jmp Lbb123
Lbb122:
	leaq str431(%rip), %rax
Lbb123:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function builder_pipeline_join_shell_args */

.text
.balign 16
builder_pipeline_render_errors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb126
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %r12
	callq errors_reporter_render_error
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
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
	callq builder_pipeline_render_errors
	subq $-32, %rsp
	jmp Lbb128
Lbb126:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb128:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_render_errors */

.text
.balign 16
builder_pipeline_collect_donna:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %r8, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb134
	movq 8(%rcx), %rbx
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %r12
	leaq str491(%rip), %rdx
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq donna_string_ends_with
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb132
	subq $32, %rsp
	movq %rdi, %r8
	movq %rdx, %r13
	callq builder_pipeline_collect_donna
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb136
Lbb132:
	movq %rdx, %r13
	movq %rbx, %rdx
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r13, %rcx
	callq donna_files_join
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
	callq builder_pipeline_collect_donna
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb136
Lbb134:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb136:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_collect_donna */

.text
.balign 16
builder_pipeline_collect_pairs_recursive:
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
	movq %r8, %r13
	movq %rcx, %rax
	movq %r9, %rcx
	movq %rcx, %r14
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb156
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rcx, %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_files_join
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r15
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	leaq str518(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_ends_with
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb150
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r15, %rcx
	callq donna_files_is_dir
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq %rdi, -8(%rbp)
	cmpq $0, %rax
	jz Lbb147
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r13, %rcx
	callq donna_string_is_empty
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	movq -8(%rbp), %rdi
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -16(%rbp)
	cmpq $1, %r8
	jz Lbb143
	subq $32, %rsp
	movq %rdx, %r12
	leaq str556(%rip), %rdx
	movq %rcx, %rdi
	movq %r13, %rcx
	callq __rt_str_concat
	movq %r12, %rdx
	movq %rax, %rcx
	movq %rdi, %rax
	movq -8(%rbp), %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	movq %rax, %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	movq -16(%rbp), %rax
	subq $-32, %rsp
	movq %rcx, (%rax)
	movq %rcx, -24(%rbp)
	jmp Lbb146
Lbb143:
	movq %rdx, %r12
	movq %rcx, (%rax)
	movq %rcx, -24(%rbp)
Lbb146:
	subq $32, %rsp
	movq %r15, %rcx
	callq donna_files_list_dir
	movq %r13, %r8
	movq %r12, %rdx
	movq %rax, %rcx
	movq -24(%rbp), %r12
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r9
	movq %r8, %r13
	movq %r12, %r8
	movq %rdx, %r12
	movq %r15, %rdx
	callq builder_pipeline_collect_pairs_recursive
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	movq %r14, %rdx
	callq donna_list_append
	movq %r13, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_collect_pairs_recursive
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb149
Lbb147:
	movq %rbx, %rcx
	movq %r14, %rbx
	movq %r13, %r8
	movq %r12, %rdx
	subq $32, %rsp
	movq %rbx, %r9
	movq %r8, %r14
	movq %rdx, %r13
	movq %rcx, %rbx
	callq builder_pipeline_collect_pairs_recursive
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb149:
	movq %rax, (%rsi)
	jmp Lbb158
Lbb150:
	movq %r14, %rdi
	movq %r13, %r14
	movq %r12, %r13
	subq $32, %rsp
	callq donna_files_drop_extension
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r14, %rcx
	callq donna_string_is_empty
	movq %r13, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	movq %r12, %rbx
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -32(%rbp)
	cmpq $1, %rax
	jz Lbb153
	subq $32, %rsp
	movq %rdx, %r13
	leaq str532(%rip), %rdx
	movq %rcx, %r12
	movq %r14, %rcx
	callq __rt_str_concat
	movq %r13, %rdx
	movq %rax, %rcx
	movq %rbx, %rax
	movq -32(%rbp), %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %rax, %rdx
	callq __rt_str_concat
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq %r12, (%rbx)
	jmp Lbb155
Lbb153:
	xchgq %r12, %rbx
	movq %rdx, %r13
	movq %r12, (%rbx)
Lbb155:
	subq $32, %rsp
	movq %rcx, %rbx
	movl $16, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r15, (%rbx)
	movq %r12, 8(%rbx)
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	movq $1, (%r9)
	movq %rbx, 8(%r9)
	movq %rdi, 16(%r9)
	subq $32, %rsp
	callq builder_pipeline_collect_pairs_recursive
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb158
Lbb156:
	movq %r14, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb158:
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
/* end function builder_pipeline_collect_pairs_recursive */

.text
.balign 16
builder_pipeline_topo_sort_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	movq %rcx, %rsi
	callq builder_pipeline_collect_mod_names
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq builder_pipeline_tag_with_local_deps
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	leaq donna_nil(%rip), %rdx
	callq builder_pipeline_kahn_sort
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function builder_pipeline_topo_sort_pairs */

.text
.balign 16
builder_pipeline_collect_mod_names:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb163
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
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
	callq builder_pipeline_collect_mod_names
	subq $-32, %rsp
	jmp Lbb165
Lbb163:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb165:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_pipeline_collect_mod_names */

.text
.balign 16
builder_pipeline_tag_with_local_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %rbx
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb168
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %r14
	movq 8(%rax), %r13
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r14, %rcx
	callq donna_files_read
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str607(%rip), %rdx
	callq donna_string_split
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq donna_nil(%rip), %rdx
	callq builder_pipeline_parse_import_names
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rdx, %r12
	callq builder_pipeline_filter_local_deps
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	movq %rbx, 16(%rdi)
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
	callq builder_pipeline_tag_with_local_deps
	subq $-32, %rsp
	jmp Lbb170
Lbb168:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb170:
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_tag_with_local_deps */

.text
.balign 16
builder_pipeline_parse_import_names:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb176
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	subq $32, %rsp
	leaq str631(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb174
	subq $32, %rsp
	movq %rcx, %r12
	callq donna_string_length
	movq %r12, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $7, %r8
	subq $32, %rsp
	movl $7, %edx
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_import_path_only
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rbx, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $32, %rsp
	callq builder_pipeline_parse_import_names
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb178
Lbb174:
	movq %rbx, %rcx
	subq $32, %rsp
	movq %rdi, %rdx
	callq builder_pipeline_parse_import_names
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb178
Lbb176:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb178:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_parse_import_names */

.text
.balign 16
builder_pipeline_import_path_only:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq donna_string_trim
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str650(%rip), %rdx
	movq %rsi, %rcx
	callq donna_string_split
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb182
	movq %rcx, %rax
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_string_trim
	subq $-32, %rsp
Lbb182:
	popq %rsi
	leave
	ret
/* end function builder_pipeline_import_path_only */

.text
.balign 16
builder_pipeline_filter_local_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb188
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %r13
	callq builder_pipeline_local_dep_name
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq donna_string_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb186
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
	callq builder_pipeline_filter_local_deps
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb190
Lbb186:
	movq %r13, %rdx
	subq $32, %rsp
	movq %rdi, %r8
	callq builder_pipeline_filter_local_deps
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb190
Lbb188:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb190:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_filter_local_deps */

.text
.balign 16
builder_pipeline_local_dep_name:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	movq %rcx, %rdi
	callq donna_list_contains_str
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	cmpq $1, %rdx
	jz Lbb193
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq builder_pipeline_path_last_segment
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_find_local_dep_by_last_segment
	subq $-32, %rsp
Lbb193:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_pipeline_local_dep_name */

.text
.balign 16
builder_pipeline_find_local_dep_by_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rbx
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb198
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq builder_pipeline_path_last_segment
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	callq donna_string_equal
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb197
	subq $32, %rsp
	callq builder_pipeline_find_local_dep_by_last_segment
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb199
Lbb197:
	movq %rax, (%rsi)
	jmp Lbb199
Lbb198:
	leaq str704(%rip), %rax
Lbb199:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_pipeline_find_local_dep_by_last_segment */

.text
.balign 16
builder_pipeline_path_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str719(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str721(%rip), %rdx
	callq builder_pipeline_path_last_segment_loop
	subq $-32, %rsp
	leave
	ret
/* end function builder_pipeline_path_last_segment */

.text
.balign 16
builder_pipeline_path_last_segment_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb204
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq builder_pipeline_path_last_segment_loop
	subq $-32, %rsp
Lbb204:
	leave
	ret
/* end function builder_pipeline_path_last_segment_loop */

.text
.balign 16
builder_pipeline_kahn_sort:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %r8, %r12
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb210
	subq $32, %rsp
	leaq donna_nil(%rip), %r9
	leaq donna_nil(%rip), %r8
	movq %rsi, %rdx
	callq builder_pipeline_split_ready
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rbx
	movq 8(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq donna_list_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb208
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	movq %rcx, %r13
	movq %rbx, %rcx
	callq builder_pipeline_tagged_names
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	movq %r12, %rdx
	callq builder_pipeline_prepend_tagged_pairs
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_kahn_sort
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb212
Lbb208:
	movq %rdi, %rcx
	movq %r12, %rdi
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_pipeline_tagged_to_pairs
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb212
Lbb210:
	movq %r12, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb212:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_kahn_sort */

.text
.balign 16
builder_pipeline_split_ready:
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
	movq %r9, %rdi
	movq %r8, %rbx
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb217
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rsi
	movq 8(%rax), %r15
	movq 16(%rax), %r13
	subq $32, %rsp
	movq %rdx, %r14
	movq %rcx, %r12
	movq %r13, %rcx
	callq builder_pipeline_all_compiled
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -16(%rbp)
	cmpq $1, %rax
	jz Lbb216
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	movq %rsi, %rax
	movq -16(%rbp), %rsi
	subq $-32, %rsp
	movq %rax, (%r12)
	movq %r15, 8(%r12)
	movq %r13, 16(%r12)
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
	movq %rdi, 16(%r9)
	subq $32, %rsp
	movq %rbx, %r8
	movq %rdx, %r14
	callq builder_pipeline_split_ready
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb219
Lbb216:
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	movq %rsi, %rax
	movq -16(%rbp), %rsi
	subq $-32, %rsp
	movq %rax, (%r12)
	movq %r15, 8(%r12)
	movq %r13, 16(%r12)
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
	callq builder_pipeline_split_ready
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb219
Lbb217:
	movq %rdi, %rsi
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rdi, (%rax)
	movq %rsi, 8(%rax)
Lbb219:
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
/* end function builder_pipeline_split_ready */

.text
.balign 16
builder_pipeline_all_compiled:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb225
	movq %rdx, %rdi
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_list_contains_str
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb224
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb226
Lbb224:
	subq $32, %rsp
	callq builder_pipeline_all_compiled
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb226
Lbb225:
	movl $1, %eax
Lbb226:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_pipeline_all_compiled */

.text
.balign 16
builder_pipeline_tagged_names:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb229
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
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
	callq builder_pipeline_tagged_names
	subq $-32, %rsp
	jmp Lbb231
Lbb229:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb231:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_pipeline_tagged_names */

.text
.balign 16
builder_pipeline_tagged_to_pairs:
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
	jz Lbb234
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %r12
	movq 8(%rax), %rbx
	subq $32, %rsp
	movq %rcx, %rdi
	movl $16, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
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
	callq builder_pipeline_tagged_to_pairs
	subq $-32, %rsp
	jmp Lbb236
Lbb234:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb236:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_tagged_to_pairs */

.text
.balign 16
builder_pipeline_prepend_tagged_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb239
	movq %rax, %rdi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %r12
	movq 8(%rax), %rbx
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %r12, (%rsi)
	movq %rbx, 8(%rsi)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rsi, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq builder_pipeline_prepend_tagged_pairs
	subq $-32, %rsp
Lbb239:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_prepend_tagged_pairs */

.text
.balign 16
builder_pipeline_sort_by_import_count:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_pipeline_tag_with_count
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_isort
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_pipeline_extract_sorted
	subq $-32, %rsp
	leave
	ret
/* end function builder_pipeline_sort_by_import_count */

.text
.balign 16
builder_pipeline_tag_with_count:
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
	jz Lbb244
	movq 8(%rcx), %rbx
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq donna_files_read
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_count_imports
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $16, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
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
	callq builder_pipeline_tag_with_count
	subq $-32, %rsp
	jmp Lbb246
Lbb244:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb246:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_tag_with_count */

.text
.balign 16
builder_pipeline_count_imports:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str921(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movl $0, %edx
	callq builder_pipeline_count_import_lines
	subq $-32, %rsp
	leave
	ret
/* end function builder_pipeline_count_imports */

.text
.balign 16
builder_pipeline_count_import_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb253
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq str934(%rip), %rdx
	callq donna_string_starts_with
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb252
	subq $32, %rsp
	movq %rax, %rdx
	callq builder_pipeline_count_import_lines
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb254
Lbb252:
	movq %rax, %rdx
	addq $1, %rdx
	subq $32, %rsp
	callq builder_pipeline_count_import_lines
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb254
Lbb253:
	movq %rsi, %rax
Lbb254:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_pipeline_count_import_lines */

.text
.balign 16
builder_pipeline_isort:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb257
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq builder_pipeline_isort
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_insert_by_count
	subq $-32, %rsp
	jmp Lbb258
Lbb257:
	leaq donna_nil(%rip), %rax
Lbb258:
	popq %rsi
	leave
	ret
/* end function builder_pipeline_isort */

.text
.balign 16
builder_pipeline_insert_by_count:
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
	movq (%rbx), %rax
	cmpq $0, %rax
	jz Lbb264
	movq 8(%rbx), %rdi
	movq 16(%rbx), %r13
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_pipeline_pair_count
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movq %rdi, %rcx
	callq builder_pipeline_pair_count
	movq %r13, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	cmpq %rax, %rsi
	setle %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb263
	movq %rdi, %rbx
	subq $32, %rsp
	callq builder_pipeline_insert_by_count
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb265
Lbb263:
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb265
Lbb264:
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb265:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_insert_by_count */

.text
.balign 16
builder_pipeline_pair_count:
	endbr64
	movq (%rcx), %rax
	ret
/* end function builder_pipeline_pair_count */

.text
.balign 16
builder_pipeline_extract_sorted:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb270
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
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
	callq builder_pipeline_extract_sorted
	subq $-32, %rsp
	jmp Lbb272
Lbb270:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb272:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_pipeline_extract_sorted */

.text
.balign 16
builder_pipeline_sort_pairs_by_import_count:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_pipeline_tag_pairs_with_count
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_isort_pairs
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_pipeline_extract_pairs_sorted
	subq $-32, %rsp
	leave
	ret
/* end function builder_pipeline_sort_pairs_by_import_count */

.text
.balign 16
builder_pipeline_tag_pairs_with_count:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb277
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %r13
	movq 8(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r13, %rcx
	callq donna_files_read
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_count_imports
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $16, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r13, (%rbx)
	movq %rdi, 8(%rbx)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $16, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
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
	callq builder_pipeline_tag_pairs_with_count
	subq $-32, %rsp
	jmp Lbb279
Lbb277:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb279:
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_tag_pairs_with_count */

.text
.balign 16
builder_pipeline_isort_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb282
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq builder_pipeline_isort_pairs
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_pipeline_insert_pair_by_count
	subq $-32, %rsp
	jmp Lbb283
Lbb282:
	leaq donna_nil(%rip), %rax
Lbb283:
	popq %rsi
	leave
	ret
/* end function builder_pipeline_isort_pairs */

.text
.balign 16
builder_pipeline_insert_pair_by_count:
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
	movq (%rbx), %rax
	cmpq $0, %rax
	jz Lbb289
	movq 8(%rbx), %rdi
	movq 16(%rbx), %r13
	subq $32, %rsp
	movq %rcx, %rsi
	callq builder_pipeline_pair_int
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movq %rdi, %rcx
	callq builder_pipeline_pair_int
	movq %r13, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	cmpq %rax, %rsi
	setle %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb288
	movq %rdi, %rbx
	subq $32, %rsp
	callq builder_pipeline_insert_pair_by_count
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb290
Lbb288:
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb290
Lbb289:
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb290:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_insert_pair_by_count */

.text
.balign 16
builder_pipeline_pair_int:
	endbr64
	movq (%rcx), %rax
	ret
/* end function builder_pipeline_pair_int */

.text
.balign 16
builder_pipeline_extract_pairs_sorted:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb295
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
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
	callq builder_pipeline_extract_pairs_sorted
	subq $-32, %rsp
	jmp Lbb297
Lbb295:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb297:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_pipeline_extract_pairs_sorted */

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

