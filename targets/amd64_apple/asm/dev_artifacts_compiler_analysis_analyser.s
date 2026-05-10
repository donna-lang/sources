.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str68:
	.ascii "main"
	.byte 0
/* end data */

.text
.balign 16
.globl _compiler_analysis_analyser_analyse
_compiler_analysis_analyser_analyse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rax
	movq 16(%rax), %rdi
	movq 40(%rax), %rbx
	movq %rbx, %rsi
	callq _compiler_analysis_analyser_analyse_imports
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r12
	callq _compiler_analysis_analyser_analyse_unused_fns
	movq %r12, %rdi
	movq %rax, %r12
	leaq _compiler_analysis_analyser_analyse_fn(%rip), %rsi
	callq _donna_list_flat_map
	movq %r12, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_analysis_analyser_analyse */

.text
.balign 16
_compiler_analysis_analyser_analyse_unused_fns:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	leaq _compiler_analysis_analyser_fn_refs(%rip), %rsi
	movq %rdi, %rbx
	callq _donna_list_flat_map
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_analysis_analyser_check_unused_fns
	popq %rbx
	leave
	ret
/* end function compiler_analysis_analyser_analyse_unused_fns */

.text
.balign 16
_compiler_analysis_analyser_check_unused_fns:
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
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb20
	movq 8(%rdi), %r12
	movq 16(%rdi), %rdi
	movq %rbx, %rsi
	callq _compiler_analysis_analyser_check_unused_fns
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rcx
	cmpq $1, %rcx
	jz Lbb19
	movq 8(%r12), %r14
	movq %rax, %r15
	movq 16(%r12), %rax
	movq 48(%r12), %rsi
	movq %rsi, -8(%rbp)
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb16
	leaq _str68(%rip), %rsi
	movq %rdi, %r13
	movq %r14, %rdi
	callq _donna_string_equal
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb13
	movq %r14, %rsi
	callq _compiler_analysis_scope_contains_name
	movq %r14, %rdi
	movq -8(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %r14
	cmpq $1, %rax
	jz Lbb10
	callq _errors_error_WarnUnusedFunction
	movq %rax, -16(%rbp)
	movl $24, %edi
	callq _malloc
	movq -16(%rbp), %rcx
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %r15, 16(%rax)
	movq %rax, (%r14)
	jmp Lbb12
Lbb10:
	movq %r15, %rax
	movq %rax, (%r14)
Lbb12:
	movq %rax, (%r13)
	jmp Lbb15
Lbb13:
	movq %r15, %rax
	movq %rax, (%r13)
Lbb15:
	movq %rax, (%r12)
	jmp Lbb18
Lbb16:
	movq %r15, %rax
	movq %rax, (%r12)
Lbb18:
	movq %rax, (%rbx)
	jmp Lbb21
Lbb19:
	movq %rax, (%rbx)
	jmp Lbb21
Lbb20:
	leaq _donna_nil(%rip), %rax
Lbb21:
	movq %rbp, %rsp
	subq $64, %rsp
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
_compiler_analysis_analyser_analyse_imports:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movq %rsi, %rdi
	leaq _compiler_analysis_analyser_fn_refs(%rip), %rsi
	callq _donna_list_flat_map
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_analysis_analyser_check_imports
	popq %rbx
	leave
	ret
/* end function compiler_analysis_analyser_analyse_imports */

.text
.balign 16
_compiler_analysis_analyser_fn_refs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb26
	leaq _donna_nil(%rip), %rax
	jmp Lbb27
Lbb26:
	movq 40(%rdi), %rdi
	callq _compiler_analysis_scope_refs_in_expr
Lbb27:
	leave
	ret
/* end function compiler_analysis_analyser_fn_refs */

.text
.balign 16
_compiler_analysis_analyser_check_imports:
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
	jz Lbb34
	movq 8(%rdi), %r14
	movq 16(%rdi), %rdi
	movq %rbx, %rsi
	callq _compiler_analysis_analyser_check_imports
	movq %rbx, %rdi
	movq %rax, %r13
	subq $16, %rsp
	movq %rsp, %rbx
	movq 16(%r14), %r12
	movq 24(%r14), %rsi
	movq %rsi, %r14
	movq %r12, %rsi
	callq _compiler_analysis_scope_contains_name
	movq %r14, %rsi
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb31
	callq _errors_error_WarnUnusedImport
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp Lbb33
Lbb31:
	movq %r13, %rax
	movq %rax, (%r12)
Lbb33:
	movq %rax, (%rbx)
	jmp Lbb35
Lbb34:
	leaq _donna_nil(%rip), %rax
Lbb35:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_analysis_analyser_check_imports */

.text
.balign 16
_compiler_analysis_analyser_analyse_fn:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb38
	movq 8(%rax), %rdi
	movq 24(%rax), %r13
	movq 40(%rax), %rbx
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _compiler_analysis_scope_refs_in_expr
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq _compiler_analysis_analyser_check_params
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_analysis_analyser_analyse_expr
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb39
Lbb38:
	leaq _donna_nil(%rip), %rax
Lbb39:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_analysis_analyser_analyse_fn */

.text
.balign 16
_compiler_analysis_analyser_check_params:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %r13
	movq %rdx, %rdi
	movq (%rsi), %rax
	cmpq $0, %rax
	jz Lbb50
	movq 8(%rsi), %r12
	movq 16(%rsi), %rsi
	movq %rdi, %rdx
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _compiler_analysis_analyser_check_params
	movq %rbx, %rdi
	movq %rax, %r14
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -16(%rbp)
	movq 8(%r12), %rbx
	movq 24(%r12), %r15
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _compiler_analysis_scope_is_discard
	movq %r13, %rsi
	movq %r12, %rdi
	movq -16(%rbp), %r13
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb47
	movq %rsi, %r13
	movq %rbx, %rsi
	callq _compiler_analysis_scope_contains_name
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq -16(%rbp), %rbx
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb44
	callq _errors_error_WarnUnusedParam
	movq %rax, %r15
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp Lbb46
Lbb44:
	movq %r14, %rax
	movq %rax, (%r13)
Lbb46:
	movq %rax, (%r12)
	jmp Lbb49
Lbb47:
	movq %r13, %rbx
	movq %r14, %rax
	movq %rax, (%r12)
Lbb49:
	movq %rax, (%rbx)
	jmp Lbb51
Lbb50:
	leaq _donna_nil(%rip), %rax
Lbb51:
	movq %rbp, %rsp
	subq $64, %rsp
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
_compiler_analysis_analyser_analyse_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $13, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb80
	cmpq $12, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
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
	leaq _donna_nil(%rip), %rax
	jmp Lbb81
Lbb67:
	movq 8(%rdi), %rdi
	callq _errors_error_WarnTodo
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb81
Lbb68:
	movq 8(%rdi), %rdi
	callq _compiler_analysis_analyser_analyse_expr
	jmp Lbb81
Lbb69:
	movq 16(%rdi), %rdi
	callq _compiler_analysis_analyser_analyse_expr
	jmp Lbb81
Lbb70:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	leaq _compiler_analysis_analyser_analyse_expr(%rip), %rsi
	callq _donna_list_flat_map
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_analysis_analyser_analyse_expr
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb81
Lbb71:
	movq 8(%rdi), %rdi
	leaq _compiler_analysis_analyser_analyse_expr(%rip), %rsi
	callq _donna_list_flat_map
	jmp Lbb81
Lbb72:
	movq 8(%rdi), %rdi
	leaq _compiler_analysis_analyser_analyse_expr(%rip), %rsi
	callq _donna_list_flat_map
	jmp Lbb81
Lbb73:
	movq 8(%rdi), %rdi
	callq _compiler_analysis_analyser_analyse_expr
	jmp Lbb81
Lbb74:
	movq 8(%rdi), %rdi
	callq _compiler_analysis_analyser_analyse_expr
	jmp Lbb81
Lbb75:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq _compiler_analysis_analyser_analyse_expr
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_analysis_analyser_analyse_expr
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb81
Lbb76:
	movq %rdi, %rax
	movq 16(%rdi), %rdi
	movq 24(%rax), %rbx
	callq _compiler_analysis_analyser_analyse_expr
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_analysis_analyser_analyse_expr
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb81
Lbb77:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq _compiler_analysis_analyser_analyse_expr
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq _compiler_analysis_analyser_analyse_expr(%rip), %rsi
	callq _donna_list_flat_map
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb81
Lbb78:
	movq 16(%rdi), %rdi
	callq _compiler_analysis_analyser_analyse_expr
	jmp Lbb81
Lbb79:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq _compiler_analysis_analyser_analyse_expr
	movq %rbx, %rdi
	movq %rax, %rbx
	leaq _compiler_analysis_analyser_analyse_clause(%rip), %rsi
	callq _donna_list_flat_map
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	jmp Lbb81
Lbb80:
	movq 8(%rdi), %rdi
	callq _compiler_analysis_analyser_analyse_block
Lbb81:
	popq %rbx
	leave
	ret
/* end function compiler_analysis_analyser_analyse_expr */

.text
.balign 16
_compiler_analysis_analyser_analyse_clause:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq 16(%rdi), %rax
	movq 24(%rdi), %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb84
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq _compiler_analysis_analyser_analyse_expr
	movq %rbx, %rdi
	movq %rax, %rbx
	jmp Lbb86
Lbb84:
	leaq _donna_nil(%rip), %rax
	movq %rax, %rbx
Lbb86:
	callq _compiler_analysis_analyser_analyse_expr
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	popq %rbx
	leave
	ret
/* end function compiler_analysis_analyser_analyse_clause */

.text
.balign 16
_compiler_analysis_analyser_analyse_block:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb105
	movq 8(%rdi), %r15
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	callq _compiler_analysis_analyser_analyse_block
	movq %rbx, %rdi
	movq %rax, %r12
	callq _compiler_analysis_scope_refs_in_stmts
	movq %rax, %r14
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r15), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb94
	cmpq $1, %rax
	jz Lbb92
	movq 8(%r15), %rdi
	callq _compiler_analysis_analyser_analyse_expr
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	callq _donna_list_append
	movq %rax, (%rbx)
	jmp Lbb106
Lbb92:
	movq %r12, %r13
	movq 8(%r15), %rdi
	movq %rdi, %r12
	movq 16(%r15), %rdi
	callq _compiler_analysis_analyser_analyse_expr
	movq %r12, %rdi
	movq %rax, %r12
	callq _compiler_analysis_scope_bound_by_pattern
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq %r14, %rsi
	callq _compiler_analysis_analyser_check_unused_bindings
	movq %r13, %rsi
	movq %rax, %rdi
	callq _donna_list_append
	movq %r12, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	movq %rax, (%rbx)
	jmp Lbb106
Lbb94:
	movq %r14, %rdi
	movq %r12, %rsi
	movq %r15, %r13
	movq 8(%r13), %r14
	movq %rdi, %r12
	movq 24(%r13), %rdi
	movq %rsi, %r15
	movq 32(%r13), %rsi
	movq %rsi, -8(%rbp)
	callq _compiler_analysis_analyser_analyse_expr
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movq %r14, %rdi
	callq _compiler_analysis_scope_is_discard
	movq %r15, %rsi
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb102
	movq %rsi, %r15
	movq %r14, %rsi
	callq _compiler_analysis_scope_contains_name
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rsi, %r15
	movq -8(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %r14
	cmpq $1, %rax
	jz Lbb98
	callq _errors_error_WarnUnusedVariable
	movq %r12, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %rax, %rdi
	movq -16(%rbp), %rax
	movq $1, (%rdi)
	movq %rax, 8(%rdi)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rdi, (%r14)
	jmp Lbb101
Lbb98:
	movq %r15, %rsi
	leaq _donna_nil(%rip), %rax
	movq %rax, (%r14)
	leaq _donna_nil(%rip), %rax
	movq %rax, %rdi
Lbb101:
	movq %rdi, (%r13)
	jmp Lbb104
Lbb102:
	leaq _donna_nil(%rip), %rax
	movq %rax, (%r13)
	leaq _donna_nil(%rip), %rax
	movq %rax, %rdi
Lbb104:
	callq _donna_list_append
	movq %r12, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	movq %rax, (%rbx)
	jmp Lbb106
Lbb105:
	leaq _donna_nil(%rip), %rax
Lbb106:
	movq %rbp, %rsp
	subq $64, %rsp
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
_compiler_analysis_analyser_check_unused_bindings:
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
	jz Lbb116
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %r12
	movq 8(%rax), %rsi
	movq %rsi, %r14
	movq %rbx, %rsi
	callq _compiler_analysis_analyser_check_unused_bindings
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _compiler_analysis_scope_is_discard
	movq %r14, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb114
	movq %rsi, %r14
	movq %r12, %rsi
	callq _compiler_analysis_scope_contains_name
	movq %r14, %rsi
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb111
	callq _errors_error_WarnUnusedVariable
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp Lbb113
Lbb111:
	movq %r13, %rax
	movq %rax, (%r12)
Lbb113:
	movq %rax, (%rbx)
	jmp Lbb117
Lbb114:
	movq %r13, %rax
	movq %rax, (%rbx)
	jmp Lbb117
Lbb116:
	leaq _donna_nil(%rip), %rax
Lbb117:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_analysis_analyser_check_unused_bindings */

