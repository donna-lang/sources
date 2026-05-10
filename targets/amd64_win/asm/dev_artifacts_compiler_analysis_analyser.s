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
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb20
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_analysis_analyser_check_unused_fns
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rdx
	cmpq $1, %rdx
	jz Lbb19
	movq 8(%rdi), %r12
	movq %rax, %r13
	movq 16(%rdi), %rax
	movq 48(%rdi), %rdx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb16
	subq $32, %rsp
	movq %rdx, %r14
	leaq str68(%rip), %rdx
	movq %rcx, %rbx
	movq %r12, %rcx
	callq donna_string_equal
	movq %r14, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb13
	subq $32, %rsp
	movq %rdx, %r14
	movq %r12, %rdx
	callq compiler_analysis_scope_contains_name
	movq %r14, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb10
	subq $32, %rsp
	callq errors_error_WarnUnusedFunction
	movq %rax, %r14
	subq $-32, %rsp
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
	jmp Lbb21
Lbb19:
	movq %rax, (%rsi)
	jmp Lbb21
Lbb20:
	leaq donna_nil(%rip), %rax
Lbb21:
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
	jz Lbb26
	leaq donna_nil(%rip), %rax
	jmp Lbb27
Lbb26:
	movq 40(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_scope_refs_in_expr
	subq $-32, %rsp
Lbb27:
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
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb34
	movq 8(%rcx), %r12
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_analysis_analyser_check_imports
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq 16(%r12), %rdi
	movq 24(%r12), %rdx
	subq $32, %rsp
	movq %rdx, %r12
	movq %rdi, %rdx
	callq compiler_analysis_scope_contains_name
	movq %r12, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb31
	subq $32, %rsp
	callq errors_error_WarnUnusedImport
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb33
Lbb31:
	movq %rbx, %rax
	movq %rax, (%rdi)
Lbb33:
	movq %rax, (%rsi)
	jmp Lbb35
Lbb34:
	leaq donna_nil(%rip), %rax
Lbb35:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
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
	jz Lbb38
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
	jmp Lbb39
Lbb38:
	leaq donna_nil(%rip), %rax
Lbb39:
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
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rcx, %r13
	movq %r8, %rcx
	movq (%rdx), %rax
	cmpq $0, %rax
	jz Lbb50
	movq 8(%rdx), %rdi
	movq 16(%rdx), %rdx
	subq $32, %rsp
	movq %rcx, %r8
	movq %rcx, %rsi
	movq %r13, %rcx
	callq compiler_analysis_analyser_check_params
	movq %rsi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rdi), %rbx
	movq 24(%rdi), %r14
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq compiler_analysis_scope_is_discard
	movq %r13, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb47
	subq $32, %rsp
	movq %rdx, %r13
	movq %rbx, %rdx
	callq compiler_analysis_scope_contains_name
	movq %r14, %r8
	movq %r13, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb44
	subq $32, %rsp
	callq errors_error_WarnUnusedParam
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb46
Lbb44:
	movq %r12, %rax
	movq %rax, (%rbx)
Lbb46:
	movq %rax, (%rdi)
	jmp Lbb49
Lbb47:
	movq %r12, %rax
	movq %rax, (%rdi)
Lbb49:
	movq %rax, (%rsi)
	jmp Lbb51
Lbb50:
	leaq donna_nil(%rip), %rax
Lbb51:
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
/* end function compiler_analysis_analyser_check_params */

.text
.balign 16
compiler_analysis_analyser_analyse_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $13, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb80
	cmpq $12, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb79
	cmpq $15, %rax
	jz Lbb78
	cmpq $9, %rax
	jz Lbb77
	cmpq $10, %rax
	jz Lbb76
	cmpq $14, %rax
	jz Lbb75
	cmpq $16, %rax
	jz Lbb74
	cmpq $17, %rax
	jz Lbb73
	cmpq $6, %rax
	jz Lbb72
	cmpq $7, %rax
	jz Lbb71
	cmpq $8, %rax
	jz Lbb70
	cmpq $11, %rax
	jz Lbb69
	cmpq $5, %rax
	jz Lbb68
	cmpq $18, %rax
	jz Lbb67
	leaq donna_nil(%rip), %rax
	jmp Lbb81
Lbb67:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq errors_error_WarnTodo
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb81
Lbb68:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	subq $-32, %rsp
	jmp Lbb81
Lbb69:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	subq $-32, %rsp
	jmp Lbb81
Lbb70:
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
	jmp Lbb81
Lbb71:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_analysis_analyser_analyse_expr(%rip), %rdx
	callq donna_list_flat_map
	subq $-32, %rsp
	jmp Lbb81
Lbb72:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_analysis_analyser_analyse_expr(%rip), %rdx
	callq donna_list_flat_map
	subq $-32, %rsp
	jmp Lbb81
Lbb73:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	subq $-32, %rsp
	jmp Lbb81
Lbb74:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	subq $-32, %rsp
	jmp Lbb81
Lbb75:
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
	jmp Lbb81
Lbb76:
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
	jmp Lbb81
Lbb77:
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
	jmp Lbb81
Lbb78:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	subq $-32, %rsp
	jmp Lbb81
Lbb79:
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
	jmp Lbb81
Lbb80:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_block
	subq $-32, %rsp
Lbb81:
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
	jz Lbb84
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	jmp Lbb86
Lbb84:
	leaq donna_nil(%rip), %rax
	movq %rax, %rsi
Lbb86:
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
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb106
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
	jnz Lbb94
	cmpq $1, %rax
	jz Lbb92
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
	jmp Lbb107
Lbb92:
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
	movq %rdx, %r14
	callq donna_list_append
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb107
Lbb94:
	movq %r12, %rcx
	movq %rdi, %r14
	movq %r13, %rbx
	movq 8(%rbx), %r12
	movq %rcx, %rdi
	movq 24(%rbx), %rcx
	movq 32(%rbx), %r13
	subq $32, %rsp
	callq compiler_analysis_analyser_analyse_expr
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r12, %rcx
	callq compiler_analysis_scope_is_discard
	movq %r13, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb102
	subq $32, %rsp
	movq %rdx, %r13
	movq %r12, %rdx
	callq compiler_analysis_scope_contains_name
	movq %r13, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb98
	subq $32, %rsp
	callq errors_error_WarnUnusedVariable
	movq %rdi, %rcx
	movq %rax, %r13
	subq $-32, %rsp
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
	jmp Lbb101
Lbb98:
	movq %r14, %rdx
	leaq donna_nil(%rip), %rax
	movq %rax, (%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, %rcx
Lbb101:
	movq %rcx, (%rbx)
	jmp Lbb105
Lbb102:
	movq %r14, %rdx
	leaq donna_nil(%rip), %rax
	movq %rax, (%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, %rcx
Lbb105:
	subq $32, %rsp
	callq donna_list_append
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb107
Lbb106:
	leaq donna_nil(%rip), %rax
Lbb107:
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
/* end function compiler_analysis_analyser_analyse_block */

.text
.balign 16
compiler_analysis_analyser_check_unused_bindings:
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
	jz Lbb117
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rdi
	movq 8(%rax), %rdx
	subq $32, %rsp
	movq %rdx, %r12
	movq %rsi, %rdx
	callq compiler_analysis_analyser_check_unused_bindings
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq compiler_analysis_scope_is_discard
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb115
	subq $32, %rsp
	movq %rdx, %r12
	movq %rdi, %rdx
	callq compiler_analysis_scope_contains_name
	movq %r12, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb112
	subq $32, %rsp
	callq errors_error_WarnUnusedVariable
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb114
Lbb112:
	movq %rbx, %rax
	movq %rax, (%rdi)
Lbb114:
	movq %rax, (%rsi)
	jmp Lbb118
Lbb115:
	movq %rbx, %rax
	movq %rax, (%rsi)
	jmp Lbb118
Lbb117:
	leaq donna_nil(%rip), %rax
Lbb118:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_analysis_analyser_check_unused_bindings */

