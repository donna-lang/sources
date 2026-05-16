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
str44:
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
str60:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str182:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str224:
	.ascii "command -v qbe >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str227:
	.ascii "DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
str236:
	.ascii "command -v cc >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str244:
	.ascii "cc"
	.byte 0
/* end data */

.data
.balign 8
str245:
	.ascii "command -v zig >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str253:
	.ascii "zig cc"
	.byte 0
/* end data */

.data
.balign 8
str254:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str262:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str267:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
str275:
	.ascii "qbe -o "
	.byte 0
/* end data */

.data
.balign 8
str278:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str282:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str291:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str349:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str351:
	.ascii ": QBE failed to compile "
	.byte 0
/* end data */

.data
.balign 8
str355:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str357:
	.ascii "  hint: run `qbe "
	.byte 0
/* end data */

.data
.balign 8
str359:
	.ascii "` to see the backend error"
	.byte 0
/* end data */

.data
.balign 8
str381:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str388:
	.ascii "-O2"
	.byte 0
/* end data */

.data
.balign 8
str392:
	.ascii "-c"
	.byte 0
/* end data */

.data
.balign 8
str397:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str412:
	.ascii "ffi"
	.byte 0
/* end data */

.data
.balign 8
str434:
	.ascii ".c"
	.byte 0
/* end data */

.data
.balign 8
str444:
	.ascii ".o"
	.byte 0
/* end data */

.data
.balign 8
str452:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str453:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str461:
	.ascii "test "
	.byte 0
/* end data */

.data
.balign 8
str464:
	.ascii " -nt "
	.byte 0
/* end data */

.data
.balign 8
str471:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str472:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str473:
	.ascii "'"
	.byte 92
	.ascii "''"
	.byte 0
/* end data */

.data
.balign 8
str476:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str484:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str511:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str544:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str571:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str585:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str609:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str660:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str684:
	.ascii "import "
	.byte 0
/* end data */

.data
.balign 8
str703:
	.ascii " as "
	.byte 0
/* end data */

.data
.balign 8
str757:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str772:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str774:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str974:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str987:
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
	movq %r9, %r15
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
	movq %rax, %r14
	subq $-32, %rsp
	cmpq $1, %rsi
	jz Lbb2
	subq $32, %rsp
	movq %rdx, %r12
	movq %r14, %rdx
	movq %rdi, %rcx
	callq builder_pipeline_file_is_current
	movq %rax, %r13
	subq $-32, %rsp
	jmp Lbb4
Lbb2:
	movq %rdx, %r12
	movl $0, %r13d
Lbb4:
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %r13
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
	movq %r15, %r8
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
	movq %rax, %r15
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %r13
	jz Lbb13
	subq $32, %rsp
	callq compiler_codegen_codegen_generate
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r14, %rcx
	callq donna_files_write
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movq $1, 16(%r13)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp Lbb14
Lbb13:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movq $0, 16(%r13)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
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
	leaq str60(%rip), %rdx
	callq donna_string_join
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb16:
	movq %rax, (%rdi)
	jmp Lbb18
Lbb17:
	subq $32, %rsp
	leaq str44(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb18:
	movq %rax, (%rsi)
	jmp Lbb21
Lbb19:
	movq %rdi, %rdx
	subq $32, %rsp
	leaq str29(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
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
	movq 56(%rbp), %rdi
	movq 48(%rbp), %rbx
	movq %r9, %rsi
	movq %r8, %r14
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb34
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, -24(%rbp)
	movq (%rax), %rcx
	movq 8(%rax), %r15
	subq $32, %rsp
	movq %rdx, %r13
	movq %rsi, %rdx
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
	movq %rdi, 32(%rax)
	movq %r8, %r13
	movq %rdx, %r8
	movq %rdx, %r12
	movq %r15, %rdx
	callq builder_pipeline_compile_module
	movq %r13, %r8
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %r9
	cmpq $1, %r9
	setz %r9b
	movzbq %r9b, %r9
	cmpl $0, %r9d
	jnz Lbb33
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
	jz Lbb30
	movq %rdi, (%rax)
	jmp Lbb32
Lbb30:
	movq $1, (%rax)
	movl $1, %edi
Lbb32:
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
	movq %rbx, 16(%rax)
	movq %rdi, %rbx
	subq $48, %rsp
	movq %rsp, %rdi
	movq %rbx, 40(%rdi)
	movq %rax, 32(%rdi)
	callq builder_pipeline_compile_pairs_loop
	subq $-48, %rsp
	movq %rax, (%rsi)
	jmp Lbb36
Lbb33:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb36
Lbb34:
	movq %rsi, %rcx
	movq %rbx, %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq %r12, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb36:
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
	movq 64(%rbp), %rdi
	movq 56(%rbp), %rsi
	movq 48(%rbp), %r12
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	movq %rcx, %rax
	movq %rsi, %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb50
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
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r13, %rcx
	callq donna_string_is_empty
	movq %r13, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -8(%rbp)
	cmpq $1, %rax
	jz Lbb40
	subq $32, %rsp
	movq %rdx, %r13
	leaq str182(%rip), %rdx
	movq %rcx, %rbx
	movq %r13, %rcx
	callq __rt_str_concat
	movq %r13, %rdx
	movq %rax, %rcx
	movq %rsi, %rax
	movq -8(%rbp), %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %rax, %rdx
	callq __rt_str_concat
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%rsi)
	jmp Lbb42
Lbb40:
	xchgq %rbx, %rsi
	movq %rbx, (%rsi)
Lbb42:
	subq $32, %rsp
	movq %rdx, %r13
	movq %r12, %rdx
	movq %rcx, %rsi
	movq %r15, %rcx
	callq donna_list_append
	movq %r14, %r8
	movq %r13, %rdx
	movq %rsi, %rcx
	movq %rax, %r9
	movq %rcx, %rsi
	movq -16(%rbp), %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq %rdi, 32(%rax)
	movq %r8, %r14
	movq %rdx, %r13
	movq %rbx, %rdx
	callq builder_pipeline_compile_module
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rdx
	movq %rsi, %rcx
	subq $-48, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %r10
	cmpq $1, %r10
	setz %r10b
	movzbq %r10b, %r10
	cmpl $0, %r10d
	jnz Lbb49
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
	jz Lbb46
	movq %rdi, (%rax)
	movq %rdi, -32(%rbp)
	jmp Lbb48
Lbb46:
	movq $1, (%rax)
	movq $1, -32(%rbp)
Lbb48:
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
	jmp Lbb52
Lbb49:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb52
Lbb50:
	movq %r12, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq %r12, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb52:
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
	leaq str224(%rip), %rcx
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
	leaq str227(%rip), %rcx
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
	jz Lbb62
	subq $32, %rsp
	leaq str236(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb61
	subq $32, %rsp
	leaq str245(%rip), %rcx
	callq donna_shell_run
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb59
	leaq str254(%rip), %rax
	movq %rax, (%rcx)
	leaq str254(%rip), %rax
	jmp Lbb60
Lbb59:
	leaq str253(%rip), %rax
	movq %rax, (%rcx)
	leaq str253(%rip), %rax
Lbb60:
	movq %rax, (%rsi)
	jmp Lbb62
Lbb61:
	leaq str244(%rip), %rax
	movq %rax, (%rsi)
	leaq str244(%rip), %rax
Lbb62:
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
	leaq str262(%rip), %rdx
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
	leaq str267(%rip), %rdx
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
	jz Lbb71
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq builder_pipeline_sh_quote
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str275(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str278(%rip), %rdx
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
	leaq str282(%rip), %rdx
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
	jz Lbb70
	leaq str291(%rip), %rax
	movq %rax, (%rcx)
	leaq str291(%rip), %rax
	jmp Lbb72
Lbb70:
	movq %rax, (%rcx)
	jmp Lbb72
Lbb71:
	movq %rsi, %rax
Lbb72:
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
	jz Lbb77
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
	jz Lbb76
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
	jmp Lbb79
Lbb76:
	subq $32, %rsp
	movq %rdi, %rdx
	callq builder_pipeline_run_qbe_all
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb79
Lbb77:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb79:
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
.globl builder_pipeline_run_qbe_all_checked
builder_pipeline_run_qbe_all_checked:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_pipeline_run_qbe_all_checked_loop
	subq $-32, %rsp
	leave
	ret
/* end function builder_pipeline_run_qbe_all_checked */

.text
.balign 16
builder_pipeline_run_qbe_all_checked_loop:
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
	jz Lbb87
	movq 8(%rax), %rcx
	movq 16(%rax), %r12
	subq $32, %rsp
	movq %rcx, %rsi
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
	jz Lbb86
	movq %r12, %rcx
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
	callq builder_pipeline_run_qbe_all_checked_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb89
Lbb86:
	subq $32, %rsp
	callq builder_pipeline_qbe_compile_error
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb89
Lbb87:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb89:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_pipeline_run_qbe_all_checked_loop */

.text
.balign 16
builder_pipeline_qbe_compile_error:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str349(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str351(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq utilities_colors_path
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str355(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str357(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str359(%rip), %rdx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq utilities_colors_dim
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_pipeline_qbe_compile_error */

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
	jz Lbb99
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq builder_pipeline_file_is_current
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb98
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
	leaq str381(%rip), %rax
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
	leaq str388(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	leaq str392(%rip), %rax
	movq %rax, 8(%rcx)
	movq %rbx, 16(%rcx)
	subq $32, %rsp
	callq builder_pipeline_c_command
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str397(%rip), %rdx
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
	jz Lbb96
	leaq donna_nil(%rip), %rax
	movq %rax, (%rdi)
	leaq donna_nil(%rip), %rax
	jmp Lbb97
Lbb96:
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
Lbb97:
	movq %rax, (%rsi)
	jmp Lbb100
Lbb98:
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
	jmp Lbb100
Lbb99:
	leaq donna_nil(%rip), %rax
Lbb100:
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
	leaq str412(%rip), %rdx
	callq donna_files_join
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_files_is_dir
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb103
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
	jmp Lbb104
Lbb103:
	leaq donna_nil(%rip), %rax
Lbb104:
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
	jz Lbb110
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str434(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_ends_with
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb108
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
	leaq str444(%rip), %rdx
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
	jmp Lbb112
Lbb108:
	movq %rdi, %rcx
	movq %r13, %rdi
	movq %r12, %r8
	subq $32, %rsp
	movq %rdi, %r9
	callq builder_pipeline_compile_c_files
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb112
Lbb110:
	movq %r13, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb112:
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
	leaq str453(%rip), %r8
	leaq str452(%rip), %rdx
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
	jz Lbb117
	subq $32, %rsp
	callq builder_pipeline_sh_quote
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str461(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str464(%rip), %rdx
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
	jmp Lbb118
Lbb117:
	movl $0, %eax
Lbb118:
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
	leaq str473(%rip), %r8
	leaq str472(%rip), %rdx
	callq donna_string_replace
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str471(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str476(%rip), %rdx
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
	jz Lbb129
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb125
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb126
Lbb125:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb126:
	cmpl $0, %eax
	jnz Lbb128
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq builder_pipeline_sh_quote
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str511(%rip), %rdx
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
	jmp Lbb130
Lbb128:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq builder_pipeline_sh_quote
	subq $-32, %rsp
	jmp Lbb130
Lbb129:
	leaq str484(%rip), %rax
Lbb130:
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
	jz Lbb133
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
	jmp Lbb135
Lbb133:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb135:
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
	jz Lbb141
	movq 8(%rcx), %rbx
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %r12
	leaq str544(%rip), %rdx
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq donna_string_ends_with
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb139
	subq $32, %rsp
	movq %rdi, %r8
	movq %rdx, %r13
	callq builder_pipeline_collect_donna
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb143
Lbb139:
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
	jmp Lbb143
Lbb141:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb143:
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
	jz Lbb163
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
	leaq str571(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_ends_with
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb157
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
	jz Lbb154
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
	jz Lbb150
	subq $32, %rsp
	movq %rdx, %r12
	leaq str609(%rip), %rdx
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
	jmp Lbb153
Lbb150:
	movq %rdx, %r12
	movq %rcx, (%rax)
	movq %rcx, -24(%rbp)
Lbb153:
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
	jmp Lbb156
Lbb154:
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
Lbb156:
	movq %rax, (%rsi)
	jmp Lbb165
Lbb157:
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
	jz Lbb160
	subq $32, %rsp
	movq %rdx, %r13
	leaq str585(%rip), %rdx
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
	jmp Lbb162
Lbb160:
	xchgq %r12, %rbx
	movq %rdx, %r13
	movq %r12, (%rbx)
Lbb162:
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
	jmp Lbb165
Lbb163:
	movq %r14, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb165:
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
	jz Lbb170
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
	jmp Lbb172
Lbb170:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb172:
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
	jz Lbb175
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
	leaq str660(%rip), %rdx
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
	jmp Lbb177
Lbb175:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb177:
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
	jz Lbb183
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	subq $32, %rsp
	leaq str684(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb181
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
	jmp Lbb185
Lbb181:
	movq %rbx, %rcx
	subq $32, %rsp
	movq %rdi, %rdx
	callq builder_pipeline_parse_import_names
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb185
Lbb183:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb185:
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
	leaq str703(%rip), %rdx
	movq %rsi, %rcx
	callq donna_string_split
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb189
	movq %rcx, %rax
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_string_trim
	subq $-32, %rsp
Lbb189:
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
	jz Lbb195
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
	jz Lbb193
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
	jmp Lbb197
Lbb193:
	movq %r13, %rdx
	subq $32, %rsp
	movq %rdi, %r8
	callq builder_pipeline_filter_local_deps
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb197
Lbb195:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb197:
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
	jz Lbb200
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
Lbb200:
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
	jz Lbb205
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
	jz Lbb204
	subq $32, %rsp
	callq builder_pipeline_find_local_dep_by_last_segment
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb206
Lbb204:
	movq %rax, (%rsi)
	jmp Lbb206
Lbb205:
	leaq str757(%rip), %rax
Lbb206:
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
	leaq str772(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str774(%rip), %rdx
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
	jz Lbb211
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq builder_pipeline_path_last_segment_loop
	subq $-32, %rsp
Lbb211:
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
	jz Lbb217
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
	jz Lbb215
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
	jmp Lbb219
Lbb215:
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
	jmp Lbb219
Lbb217:
	movq %r12, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb219:
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
	jz Lbb224
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
	jz Lbb223
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
	jmp Lbb226
Lbb223:
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
	jmp Lbb226
Lbb224:
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
Lbb226:
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
	jz Lbb232
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
	jz Lbb231
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb233
Lbb231:
	subq $32, %rsp
	callq builder_pipeline_all_compiled
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb233
Lbb232:
	movl $1, %eax
Lbb233:
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
	jz Lbb236
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
	jmp Lbb238
Lbb236:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb238:
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
	jz Lbb241
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
	jmp Lbb243
Lbb241:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb243:
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
	jz Lbb246
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
Lbb246:
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
	jz Lbb251
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
	jmp Lbb253
Lbb251:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb253:
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
	leaq str974(%rip), %rdx
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
	jz Lbb260
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq str987(%rip), %rdx
	callq donna_string_starts_with
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb259
	subq $32, %rsp
	movq %rax, %rdx
	callq builder_pipeline_count_import_lines
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb261
Lbb259:
	movq %rax, %rdx
	addq $1, %rdx
	subq $32, %rsp
	callq builder_pipeline_count_import_lines
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb261
Lbb260:
	movq %rsi, %rax
Lbb261:
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
	jz Lbb264
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
	jmp Lbb265
Lbb264:
	leaq donna_nil(%rip), %rax
Lbb265:
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
	jz Lbb271
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
	jz Lbb270
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
	jmp Lbb272
Lbb270:
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
	jmp Lbb272
Lbb271:
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
Lbb272:
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
	jz Lbb277
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
	jmp Lbb279
Lbb277:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb279:
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
	jz Lbb284
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
	jmp Lbb286
Lbb284:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb286:
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
	jz Lbb289
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
	jmp Lbb290
Lbb289:
	leaq donna_nil(%rip), %rax
Lbb290:
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
	jz Lbb296
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
	jz Lbb295
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
	jmp Lbb297
Lbb295:
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
	jmp Lbb297
Lbb296:
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
Lbb297:
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
	jz Lbb302
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
	jmp Lbb304
Lbb302:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb304:
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

