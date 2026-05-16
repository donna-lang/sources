.data
.balign 8
_str1:
	.ascii ".ssa"
	.byte 0
/* end data */

.data
.balign 8
_str16:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str17:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str29:
	.ascii "lex error: "
	.byte 0
/* end data */

.data
.balign 8
_str44:
	.ascii "parse error: "
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str60:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str182:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str224:
	.ascii "command -v qbe >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str227:
	.ascii "DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
_str236:
	.ascii "command -v cc >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str244:
	.ascii "cc"
	.byte 0
/* end data */

.data
.balign 8
_str245:
	.ascii "command -v zig >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str253:
	.ascii "zig cc"
	.byte 0
/* end data */

.data
.balign 8
_str254:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str262:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str267:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
_str275:
	.ascii "qbe -o "
	.byte 0
/* end data */

.data
.balign 8
_str278:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str282:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str291:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str349:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str351:
	.ascii ": QBE failed to compile "
	.byte 0
/* end data */

.data
.balign 8
_str355:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str357:
	.ascii "  hint: run `qbe "
	.byte 0
/* end data */

.data
.balign 8
_str359:
	.ascii "` to see the backend error"
	.byte 0
/* end data */

.data
.balign 8
_str381:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
_str388:
	.ascii "-O2"
	.byte 0
/* end data */

.data
.balign 8
_str392:
	.ascii "-c"
	.byte 0
/* end data */

.data
.balign 8
_str397:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str412:
	.ascii "ffi"
	.byte 0
/* end data */

.data
.balign 8
_str434:
	.ascii ".c"
	.byte 0
/* end data */

.data
.balign 8
_str444:
	.ascii ".o"
	.byte 0
/* end data */

.data
.balign 8
_str452:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str453:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str461:
	.ascii "test "
	.byte 0
/* end data */

.data
.balign 8
_str464:
	.ascii " -nt "
	.byte 0
/* end data */

.data
.balign 8
_str471:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str472:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str473:
	.ascii "'"
	.byte 92
	.ascii "''"
	.byte 0
/* end data */

.data
.balign 8
_str476:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str484:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str511:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str544:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str571:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str585:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str609:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str660:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str684:
	.ascii "import "
	.byte 0
/* end data */

.data
.balign 8
_str703:
	.ascii " as "
	.byte 0
/* end data */

.data
.balign 8
_str757:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str772:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str774:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str974:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str987:
	.ascii "import "
	.byte 0
/* end data */

.text
.balign 16
.globl _builder_pipeline_compile_module
_builder_pipeline_compile_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r8, %r13
	movq %rcx, -8(%rbp)
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rdx, %rdi
	movq %rdi, %r14
	movq %r12, %rdi
	callq _builder_pipeline_mod_name_to_stem
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str1(%rip), %rsi
	callq ___rt_str_concat
	movq %r14, %rdi
	movq %rax, %rsi
	callq _donna_files_join
	movq %r13, %r8
	movq %r12, %rsi
	movq %rax, %r14
	cmpq $1, %r8
	jz Lbb2
	movq %rsi, %r12
	movq %r14, %rsi
	movq %rbx, %rdi
	callq _builder_pipeline_file_is_current
	jmp Lbb4
Lbb2:
	movq %rsi, %r12
	movl $0, %eax
Lbb4:
	movq %rax, %r13
	subq $16, %rsp
	movq %rsp, %r15
	cmpq $1, %r13
	jz Lbb7
	movq %r12, %rdi
	callq _utilities_logger_step
	movq %r13, %rax
	leaq _str17(%rip), %rcx
	movq %rcx, (%r15)
	movq %rax, %r13
	jmp Lbb9
Lbb7:
	movq %r13, %rax
	movq %rax, %r13
	leaq _str16(%rip), %rax
	movq %rax, (%r15)
Lbb9:
	movq %rbx, %rdi
	callq _donna_files_read
	movq %rax, %rsi
	movq %rsi, %r15
	movq %rbx, %rsi
	movq %r15, %rdi
	callq _compiler_lexer_lexer_lex
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -16(%rbp)
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb22
	movq 8(%rax), %rdi
	callq _compiler_parser_parser_parse
	movq %r12, %rcx
	movq %rbx, %rsi
	movq -16(%rbp), %rbx
	movq -8(%rbp), %rdx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdi
	cmpq $1, %rdi
	jz Lbb20
	movq %rcx, %rsi
	movq 8(%rax), %rdi
	callq _compiler_typesystem_checker_check_module_with_imports
	movq %r15, %rsi
	subq $16, %rsp
	movq %rsp, %r15
	movq %r15, -24(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb17
	movq 8(%rax), %rdi
	movq %rdi, %r15
	callq _compiler_typesystem_checker_extract_interface
	movq %r15, %rdi
	movq %rax, %rcx
	movq %r13, %rax
	movq -24(%rbp), %r13
	movq %rcx, %r15
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -32(%rbp)
	cmpq $1, %rax
	jz Lbb15
	callq _compiler_codegen_codegen_generate
	movq %rax, %rsi
	movq %r14, %rdi
	callq _donna_files_write
	movl $24, %edi
	callq _malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq %r14, %rax
	movq -32(%rbp), %r14
	movq %rcx, (%r15)
	movq %rax, 8(%r15)
	movq $1, 16(%r15)
	movl $16, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
	jmp Lbb16
Lbb15:
	movl $24, %edi
	callq _malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq %r14, %rax
	movq -32(%rbp), %r14
	movq %rcx, (%r15)
	movq %rax, 8(%r15)
	movq $0, 16(%r15)
	movl $16, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
Lbb16:
	movq %rax, (%r13)
	jmp Lbb19
Lbb17:
	movq %r15, %r13
	movq 8(%rax), %rdi
	leaq _donna_nil(%rip), %rdx
	callq _builder_pipeline_render_errors
	movq %rax, %rdi
	leaq _str60(%rip), %rsi
	callq _donna_string_join
	movq %rax, %r14
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
Lbb19:
	movq %rax, (%r12)
	jmp Lbb21
Lbb20:
	leaq _str44(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
Lbb21:
	movq %rax, (%rbx)
	jmp Lbb24
Lbb22:
	movq %rbx, %rsi
	movq %rcx, %rbx
	leaq _str29(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb24:
	movq %rbp, %rsp
	subq $80, %rsp
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
.globl _builder_pipeline_compile_file_list
_builder_pipeline_compile_file_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rcx, %r13
	movq %rdx, %r12
	movq %rsi, %rbx
	callq _builder_pipeline_sort_by_import_count
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %rax
	movq $0, 0(%rax)
	leaq _donna_nil(%rip), %r9
	leaq _donna_nil(%rip), %r8
	callq _builder_pipeline_compile_loop
	subq $-16, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_compile_file_list */

.text
.balign 16
.globl _builder_pipeline_compile_dir
_builder_pipeline_compile_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r8, %r13
	movq %rcx, %r12
	movq %rdx, %rbx
	movq %rsi, %r15
	movq %rdi, %r14
	movq %r14, %rdi
	callq _donna_files_list_dir
	movq %r15, %rdx
	movq %r14, %rsi
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rcx
	callq _builder_pipeline_collect_pairs_recursive
	movq %rax, %rdi
	callq _builder_pipeline_topo_sort_pairs
	movq %r13, %r9
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	leaq _donna_nil(%rip), %r8
	leaq _donna_nil(%rip), %rcx
	callq _builder_pipeline_compile_pairs_loop
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_compile_dir */

.text
.balign 16
_builder_pipeline_compile_pairs_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r12
	movq %rdx, %r15
	movq %rdi, %rcx
	movq %r8, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb39
	movq 8(%rcx), %rax
	movq 16(%rcx), %r10
	movq %r10, -56(%rbp)
	movq %r9, %rbx
	movq (%rax), %r9
	movq %r9, -16(%rbp)
	movq 8(%rax), %rax
	movq %rax, -24(%rbp)
	movq %rsi, %r14
	movq %r12, %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq _donna_list_append
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq -24(%rbp), %rax
	movq %rdi, %r13
	movq -16(%rbp), %rdi
	movq %rbx, %r8
	movq %rdx, %r15
	movq %rsi, %rdx
	movq %rsi, %r14
	movq %rax, %rsi
	callq _builder_pipeline_compile_module
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq -24(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -40(%rbp)
	movq %rsi, %r13
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %r14
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb37
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq %rcx, -32(%rbp)
	movq 8(%rax), %rcx
	movq %rcx, -48(%rbp)
	movq 16(%rax), %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb34
	movq %rbx, (%rax)
	movq %rbx, -64(%rbp)
	jmp Lbb36
Lbb34:
	movq $1, (%rax)
	movq $1, -64(%rbp)
Lbb36:
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq -32(%rbp), %rax
	movq %r15, (%rbx)
	movq %rax, 8(%rbx)
	movq %rdi, %r15
	movl $24, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %r15
	movq %rbx, %rax
	movq -40(%rbp), %rbx
	movq $1, (%r15)
	movq %rax, 8(%r15)
	movq %r12, 16(%r15)
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r8
	movq -64(%rbp), %r9
	movq -48(%rbp), %rax
	movq %rdi, %r12
	movq -56(%rbp), %rdi
	movq $1, (%r8)
	movq %rax, 8(%r8)
	movq %r12, 16(%r8)
	callq _builder_pipeline_compile_pairs_loop
	movq %rax, (%rbx)
	jmp Lbb41
Lbb37:
	movq %rcx, %rbx
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb41
Lbb39:
	movq %r9, %rbx
	xchgq %rdi, %r12
	callq _donna_list_reverse
	movq %r12, %rdi
	movq %rax, %r13
	callq _donna_list_reverse
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq %rbx, %r9
	movq %rax, %rbx
	movq %r13, (%rbx)
	movq %r12, 8(%rbx)
	movq %r9, 16(%rbx)
	movl $16, %edi
	callq _malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
Lbb41:
	movq %rbp, %rsp
	subq $112, %rsp
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
_builder_pipeline_compile_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $88, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq 16(%rbp), %r12
	movq %r8, %rbx
	movq %rcx, -32(%rbp)
	movq %rdx, %r14
	movq %rsi, %r13
	movq %rdi, %rax
	movq %r9, %rdi
	movq %rdi, -48(%rbp)
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb55
	movq 8(%rax), %rdi
	movq %rdi, -24(%rbp)
	movq 16(%rax), %rax
	movq %rax, -64(%rbp)
	callq _donna_files_basename
	movq %rax, %rdi
	callq _donna_files_drop_extension
	movq %rbx, %rdi
	movq %rax, %r15
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_string_is_empty
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	movq -32(%rbp), %rcx
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -16(%rbp)
	cmpq $1, %rdx
	jz Lbb45
	movq %rsi, %r13
	leaq _str182(%rip), %rsi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq ___rt_str_concat
	movq %r13, %rsi
	movq %rax, %rdi
	movq %r15, %rax
	movq -32(%rbp), %r15
	movq %rsi, %r13
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %r15, %rcx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %r15
	movq -16(%rbp), %rax
	movq %r15, (%rax)
	jmp Lbb46
Lbb45:
	movq %r15, (%rax)
Lbb46:
	movq %rsi, %r13
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %rcx, %rdi
	callq _donna_list_append
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %rdi, %rbx
	movq -24(%rbp), %rdi
	movq %r12, %r8
	movq %rdx, %r14
	movq %rsi, %r13
	movq %r15, %rsi
	callq _builder_pipeline_compile_module
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq -32(%rbp), %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -80(%rbp)
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb54
	movq 8(%rax), %rax
	movq (%rax), %r8
	movq %r8, -40(%rbp)
	movq %rdx, %r13
	movq 8(%rax), %rdx
	movq %rdx, -56(%rbp)
	movq %rcx, %r14
	movq 16(%rax), %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb50
	movq %r12, (%rax)
	movq %r12, -72(%rbp)
	movq %rsi, %r12
	jmp Lbb53
Lbb50:
	movq %rsi, %r12
	movq $1, (%rax)
	movq $1, -72(%rbp)
Lbb53:
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq -40(%rbp), %rax
	movq %r15, (%rbx)
	movq %rax, 8(%rbx)
	movq %rdi, %r15
	movl $24, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %r15
	movq %rbx, %rax
	movq %rdi, %rbx
	movq -48(%rbp), %rdi
	movq $1, (%r15)
	movq %rax, 8(%r15)
	movq %rbx, 16(%r15)
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r9
	movq -72(%rbp), %r12
	movq -80(%rbp), %rbx
	movq -56(%rbp), %rax
	movq %rdi, %r13
	movq -64(%rbp), %rdi
	movq $1, (%r9)
	movq %rax, 8(%r9)
	movq %r13, 16(%r9)
	subq $16, %rsp
	movq %rsp, %rax
	movq %r12, 0(%rax)
	callq _builder_pipeline_compile_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb57
Lbb54:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb57
Lbb55:
	xchgq %rdi, %rbx
	callq _donna_list_reverse
	movq %rbx, %rdi
	movq %rax, %r14
	callq _donna_list_reverse
	movq %rax, %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq %r14, (%rbx)
	movq %r13, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq _malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
Lbb57:
	movq %rbp, %rsp
	subq $128, %rsp
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
.globl _builder_pipeline_qbe_available
_builder_pipeline_qbe_available:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str224(%rip), %rdi
	callq _donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function builder_pipeline_qbe_available */

.text
.balign 16
.globl _builder_pipeline_c_compiler_command
_builder_pipeline_c_compiler_command:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _str227(%rip), %rdi
	callq _donna_shell_getenv
	movq %rax, %rdi
	callq _donna_string_trim
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _donna_string_is_empty
	movq %rax, %rcx
	movq %rbx, %rax
	cmpq $0, %rcx
	jz Lbb67
	leaq _str236(%rip), %rdi
	callq _donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb66
	leaq _str245(%rip), %rdi
	callq _donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb64
	leaq _str254(%rip), %rax
	movq %rax, (%rcx)
	leaq _str254(%rip), %rax
	jmp Lbb65
Lbb64:
	leaq _str253(%rip), %rax
	movq %rax, (%rcx)
	leaq _str253(%rip), %rax
Lbb65:
	movq %rax, (%rbx)
	jmp Lbb67
Lbb66:
	leaq _str244(%rip), %rax
	movq %rax, (%rbx)
	leaq _str244(%rip), %rax
Lbb67:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function builder_pipeline_c_compiler_command */

.text
.balign 16
.globl _builder_pipeline_c_compiler_available
_builder_pipeline_c_compiler_available:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _builder_pipeline_c_compiler_command
	movq %rax, %rdi
	callq _donna_string_is_empty
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	leave
	ret
/* end function builder_pipeline_c_compiler_available */

.text
.balign 16
.globl _builder_pipeline_c_command
_builder_pipeline_c_command:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _builder_pipeline_c_compiler_command
	movq %rax, %rdi
	leaq _str262(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_pipeline_join_shell_args
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	popq %rbx
	leave
	ret
/* end function builder_pipeline_c_command */

.text
.balign 16
.globl _builder_pipeline_run_qbe
_builder_pipeline_run_qbe:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	callq _donna_files_drop_extension
	movq %rax, %rdi
	leaq _str267(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rbx, %rsi
	movq %rdi, %r12
	callq _builder_pipeline_file_is_current
	movq %r12, %rdi
	cmpq $1, %rax
	jz Lbb76
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _builder_pipeline_sh_quote
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	leaq _str275(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str278(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	callq _builder_pipeline_sh_quote
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str282(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _donna_shell_run
	movq %rax, %rcx
	movq %rbx, %rax
	cmpq $0, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb75
	leaq _str291(%rip), %rax
	movq %rax, (%rcx)
	leaq _str291(%rip), %rax
	jmp Lbb77
Lbb75:
	movq %rax, (%rcx)
	jmp Lbb77
Lbb76:
	movq %rbx, %rax
Lbb77:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_run_qbe */

.text
.balign 16
.globl _builder_pipeline_run_qbe_all
_builder_pipeline_run_qbe_all:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb82
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq _builder_pipeline_run_qbe
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_string_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb81
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq _builder_pipeline_run_qbe_all
	movq %rax, (%rbx)
	jmp Lbb84
Lbb81:
	movq %r12, %rsi
	callq _builder_pipeline_run_qbe_all
	movq %rax, (%rbx)
	jmp Lbb84
Lbb82:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb84:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_run_qbe_all */

.text
.balign 16
.globl _builder_pipeline_run_qbe_all_checked
_builder_pipeline_run_qbe_all_checked:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rsi
	callq _builder_pipeline_run_qbe_all_checked_loop
	leave
	ret
/* end function builder_pipeline_run_qbe_all_checked */

.text
.balign 16
_builder_pipeline_run_qbe_all_checked_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb92
	movq 8(%rax), %rdi
	movq 16(%rax), %r14
	movq %rdi, %rbx
	callq _builder_pipeline_run_qbe
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_string_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb91
	movq %r14, %rdi
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq _builder_pipeline_run_qbe_all_checked_loop
	movq %rax, (%rbx)
	jmp Lbb94
Lbb91:
	callq _builder_pipeline_qbe_compile_error
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb94
Lbb92:
	movq %r12, %rdi
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
Lbb94:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_run_qbe_all_checked_loop */

.text
.balign 16
_builder_pipeline_qbe_compile_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	leaq _str349(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str351(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _utilities_colors_path
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str355(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rdi, %rbx
	leaq _str357(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str359(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _utilities_colors_dim
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_qbe_compile_error */

.text
.balign 16
.globl _builder_pipeline_compile_c
_builder_pipeline_compile_c:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %r12
	movq %rdi, %rbx
	callq _donna_files_exists
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb104
	movq %rsi, %r12
	movq %rdi, %rbx
	callq _builder_pipeline_file_is_current
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb103
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %r14
	movq $1, (%r14)
	movq %r12, 8(%r14)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%r14)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq $1, (%r13)
	leaq _str381(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %r14
	movq $1, (%r14)
	movq %rdi, 8(%r14)
	movq %r13, 16(%r14)
	movl $24, %edi
	callq _malloc
	movq %rax, %r13
	movq $1, (%r13)
	leaq _str388(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	leaq _str392(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r13, 16(%rdi)
	callq _builder_pipeline_c_command
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str397(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _donna_shell_run
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb101
	leaq _donna_nil(%rip), %rax
	movq %rax, (%r12)
	leaq _donna_nil(%rip), %rax
	jmp Lbb102
Lbb101:
	movl $24, %edi
	callq _malloc
	movq %r13, %rsi
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	movq %rax, (%r12)
Lbb102:
	movq %rax, (%rbx)
	jmp Lbb105
Lbb103:
	movl $24, %edi
	callq _malloc
	movq %r12, %rsi
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb105
Lbb104:
	leaq _donna_nil(%rip), %rax
Lbb105:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_compile_c */

.text
.balign 16
.globl _builder_pipeline_compile_ffi
_builder_pipeline_compile_ffi:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	leaq _str412(%rip), %rsi
	callq _donna_files_join
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _donna_files_is_dir
	cmpq $0, %rax
	jz Lbb108
	movq %rbx, %rdi
	callq _donna_files_list_dir
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rcx
	callq _builder_pipeline_compile_c_files
	jmp Lbb109
Lbb108:
	leaq _donna_nil(%rip), %rax
Lbb109:
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_compile_ffi */

.text
.balign 16
_builder_pipeline_compile_c_files:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r15
	movq %rdx, %r14
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb115
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rsi, %r13
	leaq _str434(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_ends_with
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -8(%rbp)
	cmpq $0, %rax
	jz Lbb113
	movq %rsi, %r13
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_files_join
	movq %rbx, %rdi
	movq %rax, -16(%rbp)
	movq -8(%rbp), %rbx
	callq _donna_files_drop_extension
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	leaq _str444(%rip), %rsi
	callq ___rt_str_concat
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq %r14, %rdi
	callq _donna_files_join
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rdi, %r15
	movq -16(%rbp), %rdi
	callq _builder_pipeline_compile_c
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq %r15, %rsi
	callq _donna_list_append
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rcx
	callq _builder_pipeline_compile_c_files
	movq %rax, (%rbx)
	jmp Lbb117
Lbb113:
	movq %r12, %rdi
	movq %r15, %r12
	movq %r14, %rdx
	movq %r12, %rcx
	callq _builder_pipeline_compile_c_files
	movq %rax, (%rbx)
	jmp Lbb117
Lbb115:
	movq %r15, %rdi
	callq _donna_list_reverse
Lbb117:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_compile_c_files */

.text
.balign 16
.globl _builder_pipeline_mod_name_to_stem
_builder_pipeline_mod_name_to_stem:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str453(%rip), %rdx
	leaq _str452(%rip), %rsi
	callq _donna_string_replace
	leave
	ret
/* end function builder_pipeline_mod_name_to_stem */

.text
.balign 16
_builder_pipeline_file_is_current:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rbx
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _donna_files_exists
	movq %r12, %rdi
	cmpq $0, %rax
	jz Lbb122
	callq _builder_pipeline_sh_quote
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq _str461(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str464(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_pipeline_sh_quote
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	callq _donna_shell_run
	cmpq $0, %rax
	setnz %al
	movzbq %al, %rax
	jmp Lbb123
Lbb122:
	movl $0, %eax
Lbb123:
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_file_is_current */

.text
.balign 16
_builder_pipeline_sh_quote:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str473(%rip), %rdx
	leaq _str472(%rip), %rsi
	callq _donna_string_replace
	movq %rax, %rsi
	leaq _str471(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str476(%rip), %rsi
	callq ___rt_str_concat
	leave
	ret
/* end function builder_pipeline_sh_quote */

.text
.balign 16
_builder_pipeline_join_shell_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb134
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb130
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb131
Lbb130:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb131:
	cmpl $0, %eax
	jnz Lbb133
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq _builder_pipeline_sh_quote
	movq %rax, %rdi
	leaq _str511(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_pipeline_join_shell_args
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb135
Lbb133:
	movq 8(%rdi), %rdi
	callq _builder_pipeline_sh_quote
	jmp Lbb135
Lbb134:
	leaq _str484(%rip), %rax
Lbb135:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function builder_pipeline_join_shell_args */

.text
.balign 16
_builder_pipeline_render_errors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb138
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rsi, %r14
	callq _errors_reporter_render_error
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq _builder_pipeline_render_errors
	jmp Lbb140
Lbb138:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb140:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_render_errors */

.text
.balign 16
_builder_pipeline_collect_donna:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb146
	movq 8(%rdi), %r13
	movq 16(%rdi), %rdi
	movq %rsi, %r14
	leaq _str544(%rip), %rsi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_string_ends_with
	movq %r14, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb144
	movq %r12, %rdx
	movq %rsi, %r15
	callq _builder_pipeline_collect_donna
	movq %rax, (%rbx)
	jmp Lbb148
Lbb144:
	movq %rsi, %r15
	movq %r13, %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq _donna_files_join
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
	callq _builder_pipeline_collect_donna
	movq %rax, (%rbx)
	jmp Lbb148
Lbb146:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb148:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_collect_donna */

.text
.balign 16
_builder_pipeline_collect_pairs_recursive:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r12
	movq %rdx, %r15
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb169
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	movq %r13, -8(%rbp)
	movq %rsi, %r13
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_files_join
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rsi, %r14
	leaq _str571(%rip), %rsi
	movq %rdi, %r13
	callq _donna_string_ends_with
	movq %r13, %rdi
	movq -8(%rbp), %r13
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -64(%rbp)
	cmpq $1, %rax
	jz Lbb162
	movq %rdi, %r13
	movq %rbx, %rdi
	callq _donna_files_is_dir
	movq %r13, %rdi
	movq %rax, %rdx
	movq -64(%rbp), %rax
	movq -8(%rbp), %r13
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -32(%rbp)
	cmpq $0, %rdx
	jz Lbb159
	movq %rdi, %r13
	movq %r15, %rdi
	callq _donna_string_is_empty
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq -8(%rbp), %r13
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -16(%rbp)
	cmpq $1, %rcx
	jz Lbb155
	movq %rsi, %r14
	leaq _str609(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq ___rt_str_concat
	movq %r14, %rsi
	movq %rax, %rdi
	movq %r13, %rax
	movq -8(%rbp), %r13
	movq %rsi, %r14
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	movq -16(%rbp), %rax
	movq %rdi, (%rax)
	movq %rdi, -24(%rbp)
	jmp Lbb158
Lbb155:
	movq %rsi, %r14
	movq %rdi, (%rax)
	movq %rdi, -24(%rbp)
Lbb158:
	movq %rbx, %rdi
	callq _donna_files_list_dir
	movq %r15, %rdx
	movq %r14, %rsi
	movq %rax, %rdi
	movq -24(%rbp), %r14
	movq %rbx, %rax
	movq -64(%rbp), %rbx
	leaq _donna_nil(%rip), %rcx
	movq %rdx, %r15
	movq %r14, %rdx
	movq %rsi, %r14
	movq %rax, %rsi
	callq _builder_pipeline_collect_pairs_recursive
	movq %rax, %rdi
	callq _donna_list_reverse
	movq %r14, %rsi
	movq %rax, %rdi
	movq %r12, %rax
	movq -32(%rbp), %r12
	movq %rsi, %r14
	movq %rax, %rsi
	callq _donna_list_append
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	callq _builder_pipeline_collect_pairs_recursive
	movq %rax, (%r12)
	jmp Lbb161
Lbb159:
	movq %rax, %rbx
	movq %r13, %rdi
	movq %r12, %r13
	movq %rcx, %r12
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rcx
	movq %rdx, %r15
	movq %rsi, %r14
	movq %rdi, %r13
	callq _builder_pipeline_collect_pairs_recursive
	movq %rax, (%r12)
Lbb161:
	movq %rax, (%rbx)
	jmp Lbb171
Lbb162:
	callq _donna_files_drop_extension
	movq %r13, %rdi
	movq %rax, -40(%rbp)
	movq %rdi, %r13
	movq %r15, %rdi
	callq _donna_string_is_empty
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq -40(%rbp), %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -48(%rbp)
	cmpq $1, %rdx
	jz Lbb165
	movq %rsi, %r14
	leaq _str585(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq ___rt_str_concat
	movq %r14, %rsi
	movq %rax, %rdi
	movq -40(%rbp), %rax
	movq %rsi, %r14
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %r13, %rdi
	movq -48(%rbp), %rcx
	movq %rax, (%rcx)
	movq %rax, -56(%rbp)
	jmp Lbb168
Lbb165:
	movq %rsi, %r14
	movq %rax, (%rcx)
	movq %rax, -56(%rbp)
Lbb168:
	movq %rdi, %r13
	movl $16, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq -56(%rbp), %rax
	movq %rbx, (%r13)
	movq %rax, 8(%r13)
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %r15, %rdx
	movq %r14, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq -64(%rbp), %rbx
	movq $1, (%rcx)
	movq %r13, 8(%rcx)
	movq %r12, 16(%rcx)
	callq _builder_pipeline_collect_pairs_recursive
	movq %rax, (%rbx)
	jmp Lbb171
Lbb169:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb171:
	movq %rbp, %rsp
	subq $112, %rsp
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
_builder_pipeline_topo_sort_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _donna_nil(%rip), %rsi
	movq %rdi, %rbx
	callq _builder_pipeline_collect_mod_names
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _donna_nil(%rip), %rdx
	callq _builder_pipeline_tag_with_local_deps
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rdx
	leaq _donna_nil(%rip), %rsi
	callq _builder_pipeline_kahn_sort
	popq %rbx
	leave
	ret
/* end function builder_pipeline_topo_sort_pairs */

.text
.balign 16
_builder_pipeline_collect_mod_names:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb176
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq _builder_pipeline_collect_mod_names
	jmp Lbb178
Lbb176:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb178:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_collect_mod_names */

.text
.balign 16
_builder_pipeline_tag_with_local_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %rbx
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb181
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %r15
	movq 8(%rax), %r13
	movq %rdi, %r12
	movq %r15, %rdi
	callq _donna_files_read
	movq %r14, %rsi
	movq %rax, %rdi
	movq %rsi, %r14
	leaq _str660(%rip), %rsi
	callq _donna_string_split
	movq %r14, %rsi
	movq %rax, %rdi
	movq %rsi, %r14
	leaq _donna_nil(%rip), %rsi
	callq _builder_pipeline_parse_import_names
	movq %r14, %rsi
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rdx
	movq %rsi, %r14
	callq _builder_pipeline_filter_local_deps
	movq %r12, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq -16(%rbp), %rax
	movq %r15, (%r12)
	movq %r13, 8(%r12)
	movq %rax, 16(%r12)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq _builder_pipeline_tag_with_local_deps
	jmp Lbb183
Lbb181:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb183:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_tag_with_local_deps */

.text
.balign 16
_builder_pipeline_parse_import_names:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb189
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	leaq _str684(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_string_starts_with
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb187
	movq %rdi, %r14
	callq _donna_string_length
	movq %r14, %rdi
	movq %rax, %rdx
	subq $7, %rdx
	movl $7, %esi
	callq _donna_string_slice
	movq %rax, %rdi
	callq _builder_pipeline_import_path_only
	movq %r13, %rdi
	movq %rax, %r13
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq _builder_pipeline_parse_import_names
	movq %rax, (%rbx)
	jmp Lbb191
Lbb187:
	movq %r13, %rdi
	movq %r12, %rsi
	callq _builder_pipeline_parse_import_names
	movq %rax, (%rbx)
	jmp Lbb191
Lbb189:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb191:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_parse_import_names */

.text
.balign 16
_builder_pipeline_import_path_only:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _donna_string_trim
	movq %rax, %rbx
	leaq _str703(%rip), %rsi
	movq %rbx, %rdi
	callq _donna_string_split
	movq %rax, %rcx
	movq %rbx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb195
	movq %rcx, %rax
	movq 8(%rax), %rdi
	callq _donna_string_trim
Lbb195:
	popq %rbx
	leave
	ret
/* end function builder_pipeline_import_path_only */

.text
.balign 16
_builder_pipeline_filter_local_deps:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb201
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	movq %rsi, %r15
	callq _builder_pipeline_local_dep_name
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_string_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb199
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq _builder_pipeline_filter_local_deps
	movq %rax, (%rbx)
	jmp Lbb203
Lbb199:
	movq %r15, %rsi
	movq %r12, %rdx
	callq _builder_pipeline_filter_local_deps
	movq %rax, (%rbx)
	jmp Lbb203
Lbb201:
	movq %r12, %rdi
	callq _donna_list_reverse
Lbb203:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_filter_local_deps */

.text
.balign 16
_builder_pipeline_local_dep_name:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	movq %rsi, %rdi
	movq %rbx, %rsi
	movq %rdi, %r12
	callq _donna_list_contains_str
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	cmpq $1, %rcx
	jz Lbb206
	movq %rdi, %rbx
	movq %rax, %rdi
	callq _builder_pipeline_path_last_segment
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _builder_pipeline_find_local_dep_by_last_segment
Lbb206:
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_local_dep_name */

.text
.balign 16
_builder_pipeline_find_local_dep_by_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb211
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _builder_pipeline_path_last_segment
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	callq _donna_string_equal
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb210
	callq _builder_pipeline_find_local_dep_by_last_segment
	movq %rax, (%rbx)
	jmp Lbb212
Lbb210:
	movq %rax, (%rbx)
	jmp Lbb212
Lbb211:
	leaq _str757(%rip), %rax
Lbb212:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_find_local_dep_by_last_segment */

.text
.balign 16
_builder_pipeline_path_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str772(%rip), %rsi
	callq _donna_string_split
	movq %rax, %rdi
	leaq _str774(%rip), %rsi
	callq _builder_pipeline_path_last_segment_loop
	leave
	ret
/* end function builder_pipeline_path_last_segment */

.text
.balign 16
_builder_pipeline_path_last_segment_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb217
	movq 8(%rdi), %rsi
	movq 16(%rdi), %rdi
	callq _builder_pipeline_path_last_segment_loop
Lbb217:
	leave
	ret
/* end function builder_pipeline_path_last_segment_loop */

.text
.balign 16
_builder_pipeline_kahn_sort:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r14
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb223
	leaq _donna_nil(%rip), %rcx
	leaq _donna_nil(%rip), %rdx
	movq %rbx, %rsi
	callq _builder_pipeline_split_ready
	movq %rbx, %rdi
	movq (%rax), %r13
	movq 8(%rax), %r12
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_list_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb221
	leaq _donna_nil(%rip), %rsi
	movq %rdi, %r15
	movq %r13, %rdi
	callq _builder_pipeline_tagged_names
	movq %r15, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rsi, %r13
	movq %r14, %rsi
	callq _builder_pipeline_prepend_tagged_pairs
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq _builder_pipeline_kahn_sort
	movq %rax, (%rbx)
	jmp Lbb225
Lbb221:
	movq %r12, %rdi
	movq %r14, %r12
	leaq _donna_nil(%rip), %rsi
	callq _builder_pipeline_tagged_to_pairs
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_list_reverse
	movq %r12, %rsi
	movq %rax, %rdi
	callq _donna_list_append
	movq %rax, (%rbx)
	jmp Lbb225
Lbb223:
	movq %r14, %rdi
	callq _donna_list_reverse
Lbb225:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_kahn_sort */

.text
.balign 16
_builder_pipeline_split_ready:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r12
	movq %rdx, %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb230
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rcx
	movq %rcx, -24(%rbp)
	movq 8(%rax), %rcx
	movq %rcx, -16(%rbp)
	movq 16(%rax), %rbx
	movq %rsi, %r15
	movq %rdi, %r14
	movq %rbx, %rdi
	callq _builder_pipeline_all_compiled
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -32(%rbp)
	cmpq $1, %rax
	jz Lbb229
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %r14
	movq -16(%rbp), %rax
	movq -24(%rbp), %rcx
	movq %rcx, (%r14)
	movq %rax, 8(%r14)
	movq %rbx, 16(%r14)
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq -32(%rbp), %rbx
	movq $1, (%rcx)
	movq %r14, 8(%rcx)
	movq %r12, 16(%rcx)
	movq %r13, %rdx
	movq %rsi, %r15
	callq _builder_pipeline_split_ready
	movq %rax, (%rbx)
	jmp Lbb232
Lbb229:
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %r14
	movq -16(%rbp), %rax
	movq -24(%rbp), %rcx
	movq %rcx, (%r14)
	movq %rax, 8(%r14)
	movq %rbx, 16(%r14)
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	movq -32(%rbp), %rbx
	movq $1, (%rdx)
	movq %r14, 8(%rdx)
	movq %r13, 16(%rdx)
	movq %r12, %rcx
	callq _builder_pipeline_split_ready
	movq %rax, (%rbx)
	jmp Lbb232
Lbb230:
	movq %r12, %rbx
	movq %r13, %rdi
	callq _donna_list_reverse
	movq %rbx, %rdi
	movq %rax, %r12
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, (%rax)
	movq %rbx, 8(%rax)
Lbb232:
	movq %rbp, %rsp
	subq $80, %rsp
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
_builder_pipeline_all_compiled:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb238
	movq %rsi, %r12
	movq 8(%rdi), %rsi
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _donna_list_contains_str
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb237
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb239
Lbb237:
	callq _builder_pipeline_all_compiled
	movq %rax, (%rbx)
	jmp Lbb239
Lbb238:
	movl $1, %eax
Lbb239:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_all_compiled */

.text
.balign 16
_builder_pipeline_tagged_names:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb242
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq _builder_pipeline_tagged_names
	jmp Lbb244
Lbb242:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb244:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_tagged_names */

.text
.balign 16
_builder_pipeline_tagged_to_pairs:
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
	jz Lbb247
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %r14
	movq 8(%rax), %r13
	movq %rdi, %r12
	movl $16, %edi
	callq _malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq _builder_pipeline_tagged_to_pairs
	jmp Lbb249
Lbb247:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb249:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_tagged_to_pairs */

.text
.balign 16
_builder_pipeline_prepend_tagged_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb252
	movq %rax, %r12
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %r14
	movq 8(%rax), %r13
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %r14, (%rbx)
	movq %r13, 8(%rbx)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	movq $1, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rax, 16(%rsi)
	callq _builder_pipeline_prepend_tagged_pairs
Lbb252:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_prepend_tagged_pairs */

.text
.balign 16
_builder_pipeline_sort_by_import_count:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rsi
	callq _builder_pipeline_tag_with_count
	movq %rax, %rdi
	callq _builder_pipeline_isort
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rsi
	callq _builder_pipeline_extract_sorted
	leave
	ret
/* end function builder_pipeline_sort_by_import_count */

.text
.balign 16
_builder_pipeline_tag_with_count:
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
	jz Lbb257
	movq 8(%rdi), %r13
	movq 16(%rdi), %rdi
	movq %rdi, %r12
	movq %r13, %rdi
	callq _donna_files_read
	movq %rax, %rdi
	callq _builder_pipeline_count_imports
	movq %r12, %rdi
	movq %rax, %r14
	movq %rdi, %r12
	movl $16, %edi
	callq _malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq _builder_pipeline_tag_with_count
	jmp Lbb259
Lbb257:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb259:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_tag_with_count */

.text
.balign 16
_builder_pipeline_count_imports:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _str974(%rip), %rsi
	callq _donna_string_split
	movq %rax, %rdi
	movl $0, %esi
	callq _builder_pipeline_count_import_lines
	leave
	ret
/* end function builder_pipeline_count_imports */

.text
.balign 16
_builder_pipeline_count_import_lines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb266
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	leaq _str987(%rip), %rsi
	callq _donna_string_starts_with
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb265
	movq %rax, %rsi
	callq _builder_pipeline_count_import_lines
	movq %rax, (%rbx)
	jmp Lbb267
Lbb265:
	movq %rax, %rsi
	addq $1, %rsi
	callq _builder_pipeline_count_import_lines
	movq %rax, (%rbx)
	jmp Lbb267
Lbb266:
	movq %rbx, %rax
Lbb267:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_count_import_lines */

.text
.balign 16
_builder_pipeline_isort:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb270
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	callq _builder_pipeline_isort
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _builder_pipeline_insert_by_count
	jmp Lbb271
Lbb270:
	leaq _donna_nil(%rip), %rax
Lbb271:
	popq %rbx
	leave
	ret
/* end function builder_pipeline_isort */

.text
.balign 16
_builder_pipeline_insert_by_count:
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
	movq (%r13), %rax
	cmpq $0, %rax
	jz Lbb277
	movq 8(%r13), %r12
	movq 16(%r13), %r15
	movq %rdi, %rbx
	callq _builder_pipeline_pair_count
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r14
	movq %r12, %rdi
	callq _builder_pipeline_pair_count
	movq %r15, %rsi
	movq %r14, %rdi
	cmpq %rax, %rbx
	setle %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb276
	movq %r12, %r13
	callq _builder_pipeline_insert_by_count
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb278
Lbb276:
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %r13, %rsi
	movq %r12, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb278
Lbb277:
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb278:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_insert_by_count */

.text
.balign 16
_builder_pipeline_pair_count:
	endbr64
	movq (%rdi), %rax
	ret
/* end function builder_pipeline_pair_count */

.text
.balign 16
_builder_pipeline_extract_sorted:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb283
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq _builder_pipeline_extract_sorted
	jmp Lbb285
Lbb283:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb285:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_extract_sorted */

.text
.balign 16
_builder_pipeline_sort_pairs_by_import_count:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rsi
	callq _builder_pipeline_tag_pairs_with_count
	movq %rax, %rdi
	callq _builder_pipeline_isort_pairs
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rsi
	callq _builder_pipeline_extract_pairs_sorted
	leave
	ret
/* end function builder_pipeline_sort_pairs_by_import_count */

.text
.balign 16
_builder_pipeline_tag_pairs_with_count:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb290
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %r15
	movq 8(%rax), %r12
	movq %rdi, %r13
	movq %r15, %rdi
	callq _donna_files_read
	movq %rax, %rdi
	callq _builder_pipeline_count_imports
	movq %r13, %rdi
	movq %rax, %r14
	movq %rdi, %r13
	movl $16, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r12, 8(%r13)
	movq %rdi, %r12
	movl $16, %edi
	callq _malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq _builder_pipeline_tag_pairs_with_count
	jmp Lbb292
Lbb290:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb292:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_tag_pairs_with_count */

.text
.balign 16
_builder_pipeline_isort_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb295
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	callq _builder_pipeline_isort_pairs
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _builder_pipeline_insert_pair_by_count
	jmp Lbb296
Lbb295:
	leaq _donna_nil(%rip), %rax
Lbb296:
	popq %rbx
	leave
	ret
/* end function builder_pipeline_isort_pairs */

.text
.balign 16
_builder_pipeline_insert_pair_by_count:
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
	movq (%r13), %rax
	cmpq $0, %rax
	jz Lbb302
	movq 8(%r13), %r12
	movq 16(%r13), %r15
	movq %rdi, %rbx
	callq _builder_pipeline_pair_int
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r14
	movq %r12, %rdi
	callq _builder_pipeline_pair_int
	movq %r15, %rsi
	movq %r14, %rdi
	cmpq %rax, %rbx
	setle %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb301
	movq %r12, %r13
	callq _builder_pipeline_insert_pair_by_count
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb303
Lbb301:
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %r13, %rsi
	movq %r12, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb303
Lbb302:
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb303:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_insert_pair_by_count */

.text
.balign 16
_builder_pipeline_pair_int:
	endbr64
	movq (%rdi), %rax
	ret
/* end function builder_pipeline_pair_int */

.text
.balign 16
_builder_pipeline_extract_pairs_sorted:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb308
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq _builder_pipeline_extract_pairs_sorted
	jmp Lbb310
Lbb308:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb310:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_extract_pairs_sorted */

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

