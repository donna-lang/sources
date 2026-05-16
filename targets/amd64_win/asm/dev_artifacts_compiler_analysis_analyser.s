.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str68:
	.ascii "main"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_analysis_analyser_analyse
compiler_analysis_analyser_analyse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq 16(%rax), %rcx
	movq 40(%rax), %rsi
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_analysis_analyser_analyse_imports
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	callq compiler_analysis_analyser_analyse_unused_fns
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	leaq compiler_analysis_analyser_analyse_fn(%rip), %rdx
	callq donna_list_flat_map
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_analysis_analyser_analyse */

.text
.balign 16
compiler_analysis_analyser_analyse_unused_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	leaq compiler_analysis_analyser_fn_refs(%rip), %rdx
	movq %rcx, %rsi
	callq donna_list_flat_map
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_analyser_check_unused_fns
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_analysis_analyser_analyse_unused_fns */

.text
.balign 16
compiler_analysis_analyser_check_unused_fns:
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
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb21
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_analysis_analyser_check_unused_fns
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %r13
	movq (%rdi), %rax
	cmpq $1, %rax
	jz Lbb19
	movq 8(%rdi), %rax
	movq %rax, %r14
	movq 16(%rdi), %rax
	movq 48(%rdi), %r15
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb16
	subq $32, %rsp
	leaq str68(%rip), %rdx
	movq %rcx, %rbx
	movq %r14, %rcx
	callq donna_string_equal
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb13
	subq $32, %rsp
	movq %r14, %rdx
	callq compiler_analysis_scope_contains_name
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb10
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	xchgq %rax, %r14
	subq $-32, %rsp
	movq $2, (%r14)
	movq %rax, 8(%r14)
	movq %r15, 16(%r14)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp Lbb12
Lbb10:
	movq %r13, %rax
	movq %rax, (%r12)
Lbb12:
	movq %rax, (%rbx)
	jmp Lbb15
Lbb13:
	movq %r13, %rax
	movq %rax, (%rbx)
Lbb15:
	movq %rax, (%rdi)
	jmp Lbb18
Lbb16:
	movq %r13, %rax
	movq %rax, (%rdi)
Lbb18:
	movq %rax, (%rsi)
	jmp Lbb22
Lbb19:
	movq %r13, %rax
	movq %rax, (%rsi)
	jmp Lbb22
Lbb21:
	leaq donna_nil(%rip), %rax
Lbb22:
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
/* end function compiler_analysis_analyser_check_unused_fns */

.text
.balign 16
compiler_analysis_analyser_analyse_imports:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq $32, %rsp
	leaq compiler_analysis_analyser_fn_refs(%rip), %rdx
	callq donna_list_flat_map
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_analyser_check_imports
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_analysis_analyser_analyse_imports */

.text
.balign 16
compiler_analysis_analyser_fn_refs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb27
	leaq donna_nil(%rip), %rax
	jmp Lbb28
Lbb27:
	movq 40(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	subq $-32, %rsp
Lbb28:
	leave
	ret
/* end function compiler_analysis_analyser_fn_refs */

.text
.balign 16
compiler_analysis_analyser_check_imports:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb35
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_analysis_analyser_check_imports
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq 16(%rdi), %r14
	movq 24(%rdi), %r13
	subq $32, %rsp
	movq %r14, %rdx
	callq compiler_analysis_scope_contains_name
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb32
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $3, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb34
Lbb32:
	movq %rbx, %rax
	movq %rax, (%rdi)
Lbb34:
	movq %rax, (%rsi)
	jmp Lbb36
Lbb35:
	leaq donna_nil(%rip), %rax
Lbb36:
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
/* end function compiler_analysis_analyser_check_imports */

.text
.balign 16
compiler_analysis_analyser_analyse_fn:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb39
	movq 8(%rax), %rcx
	movq 24(%rax), %rbx
	movq 40(%rax), %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq compiler_analysis_scope_refs_in_expr
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_analyser_check_params
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb40
Lbb39:
	leaq donna_nil(%rip), %rax
Lbb40:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_analysis_analyser_analyse_fn */

.text
.balign 16
compiler_analysis_analyser_check_params:
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
	movq %rcx, %rbx
	movq %r8, %rcx
	movq (%rdx), %rax
	cmpq $0, %rax
	jz Lbb51
	movq 8(%rdx), %rdi
	movq 16(%rdx), %rdx
	subq $32, %rsp
	movq %rcx, %r8
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq compiler_analysis_analyser_check_params
	movq %rsi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rdi), %r15
	movq 24(%rdi), %r14
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r15, %rcx
	callq compiler_analysis_scope_is_discard
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb48
	subq $32, %rsp
	movq %r15, %rdx
	callq compiler_analysis_scope_contains_name
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb45
	subq $32, %rsp
	movq %rcx, %r13
	movl $32, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	movq $1, (%r13)
	movq %r15, 8(%r13)
	movq %rcx, 16(%r13)
	movq %r14, 24(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb47
Lbb45:
	movq %r12, %rax
	movq %rax, (%rbx)
Lbb47:
	movq %rax, (%rdi)
	jmp Lbb50
Lbb48:
	movq %r12, %rax
	movq %rax, (%rdi)
Lbb50:
	movq %rax, (%rsi)
	jmp Lbb52
Lbb51:
	leaq donna_nil(%rip), %rax
Lbb52:
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
/* end function compiler_analysis_analyser_check_params */

.text
.balign 16
compiler_analysis_analyser_analyse_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $13, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb81
	cmpq $12, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb80
	cmpq $15, %rax
	jz Lbb79
	cmpq $9, %rax
	jz Lbb78
	cmpq $10, %rax
	jz Lbb77
	cmpq $14, %rax
	jz Lbb76
	cmpq $16, %rax
	jz Lbb75
	cmpq $17, %rax
	jz Lbb74
	cmpq $6, %rax
	jz Lbb73
	cmpq $7, %rax
	jz Lbb72
	cmpq $8, %rax
	jz Lbb71
	cmpq $11, %rax
	jz Lbb70
	cmpq $5, %rax
	jz Lbb69
	cmpq $18, %rax
	jz Lbb68
	leaq donna_nil(%rip), %rax
	jmp Lbb82
Lbb68:
	movq 8(%rcx), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $5, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb82
Lbb69:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	subq $-32, %rsp
	jmp Lbb82
Lbb70:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	subq $-32, %rsp
	jmp Lbb82
Lbb71:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	leaq compiler_analysis_analyser_analyse_expr(%rip), %rdx
	callq donna_list_flat_map
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb82
Lbb72:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_analysis_analyser_analyse_expr(%rip), %rdx
	callq donna_list_flat_map
	subq $-32, %rsp
	jmp Lbb82
Lbb73:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_analysis_analyser_analyse_expr(%rip), %rdx
	callq donna_list_flat_map
	subq $-32, %rsp
	jmp Lbb82
Lbb74:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	subq $-32, %rsp
	jmp Lbb82
Lbb75:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	subq $-32, %rsp
	jmp Lbb82
Lbb76:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb82
Lbb77:
	movq %rcx, %rax
	movq 16(%rcx), %rcx
	movq 24(%rax), %rsi
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb82
Lbb78:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq compiler_analysis_analyser_analyse_expr(%rip), %rdx
	callq donna_list_flat_map
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb82
Lbb79:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	subq $-32, %rsp
	jmp Lbb82
Lbb80:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq compiler_analysis_analyser_analyse_clause(%rip), %rdx
	callq donna_list_flat_map
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	jmp Lbb82
Lbb81:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_block
	subq $-32, %rsp
Lbb82:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_analysis_analyser_analyse_expr */

.text
.balign 16
compiler_analysis_analyser_analyse_clause:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq 16(%rcx), %rax
	movq 24(%rcx), %rcx
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb85
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	jmp Lbb87
Lbb85:
	leaq donna_nil(%rip), %rax
	movq %rax, %rsi
Lbb87:
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_analysis_analyser_analyse_clause */

.text
.balign 16
compiler_analysis_analyser_analyse_block:
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
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb107
	movq 8(%rcx), %r13
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	callq compiler_analysis_analyser_analyse_block
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_stmts
	movq %rax, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r13), %rax
	cmpq $0, %rax
	movq %rcx, %r12
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb95
	cmpq $1, %rax
	jz Lbb93
	movq 8(%r13), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	callq donna_list_append
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb108
Lbb93:
	movq %rdi, %rbx
	movq 8(%r13), %rcx
	movq %rcx, %rdi
	movq 16(%r13), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_analysis_scope_bound_by_pattern
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	movq %r12, %rdx
	callq compiler_analysis_analyser_check_unused_bindings
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	callq donna_list_append
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb108
Lbb95:
	movq %r12, %rcx
	xchgq %rdi, %r13
	movq 8(%rdi), %r15
	movq %rcx, %rbx
	movq 24(%rdi), %rcx
	movq 32(%rdi), %rdi
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r15, %rcx
	callq compiler_analysis_scope_is_discard
	movq %r13, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb103
	subq $32, %rsp
	movq %rdx, %r14
	movq %r15, %rdx
	callq compiler_analysis_scope_contains_name
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb99
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	movq $0, (%r13)
	movq %r15, 8(%r13)
	movq %rdi, 16(%r13)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %r13, 8(%rcx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rcx)
	movq %rcx, (%r12)
	jmp Lbb102
Lbb99:
	movq %rcx, %rdi
	movq %r14, %rdx
	leaq donna_nil(%rip), %rax
	movq %rax, (%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, %rcx
Lbb102:
	movq %rcx, (%rbx)
	jmp Lbb106
Lbb103:
	movq %r12, %rdi
	leaq donna_nil(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, %rcx
Lbb106:
	subq $32, %rsp
	callq donna_list_append
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb108
Lbb107:
	leaq donna_nil(%rip), %rax
Lbb108:
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
/* end function compiler_analysis_analyser_analyse_block */

.text
.balign 16
compiler_analysis_analyser_check_unused_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb118
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %r14
	movq 8(%rax), %r13
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_analysis_analyser_check_unused_bindings
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r14, %rcx
	callq compiler_analysis_scope_is_discard
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb116
	subq $32, %rsp
	movq %r14, %rdx
	callq compiler_analysis_scope_contains_name
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb113
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $0, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb115
Lbb113:
	movq %rbx, %rax
	movq %rax, (%rdi)
Lbb115:
	movq %rax, (%rsi)
	jmp Lbb119
Lbb116:
	movq %rbx, %rax
	movq %rax, (%rsi)
	jmp Lbb119
Lbb118:
	leaq donna_nil(%rip), %rax
Lbb119:
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
/* end function compiler_analysis_analyser_check_unused_bindings */

